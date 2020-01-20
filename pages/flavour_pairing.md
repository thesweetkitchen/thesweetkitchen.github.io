---
title: Flavour pairing
permalink: "/resources/flavour_pairing"
layout: page
header:
  image_fullwidth: /assets/img/header/about-header.jpg
  subtitle: Be inspired to see new combinations
breadcrumb: true
meta_title: Flavour pairing
---
<!-- Load d3.js -->
<script src="https://d3js.org/d3.v4.js"></script>

<!-- Create a div where the graph will take place -->
<div id="my_dataviz"></div>
<script>

// set the dimensions and margins of the graph
var margin = {top: 20, right: 30, bottom: 20, left: 30},
  width = window.innerWidth - margin.left - margin.right,
  height = 300 - margin.top - margin.bottom;

// append the svg object to the body of the page
var svg = d3.select("#my_dataviz")
  .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform",
          "translate(" + margin.left + "," + margin.top + ")");

// Read dummy data
d3.json("../assets/js/flavour_pairing.json", function( data) {

  // List of node names
  var allNodes = data.nodes.map(function(d){return d.name})

  // A linear scale to position the nodes on the X axis
  var y = d3.scalePoint()
    .range([0, height])
    .domain(allNodes)

  // Add the circle for the nodes
  svg
    .selectAll("mynodes")
    .data(data.nodes)
    .enter()
    .append("circle")
      .attr("cx", function(d){ return(y(d.name))})
      .attr("cy", function(d){ return(y(d.name))})
      .attr("r", 8)
      .style("fill", "#009AB6")

  // And give them a label
  svg
    .selectAll("mylabels")
    .data(data.nodes)
    .enter()
    .append("text")
      .attr("x", function(d){ return(y(d.name)) + 10})
      .attr("y", function(d){ return(y(d.name)) + 5})
      .text(function(d){ return(d.name)})
      .style("text-anchor", "left")
      .style("alignment-baseline", "right")

  // Add links between nodes. Here is the tricky part.
  // In my input data, links are provided between nodes -id-, NOT between node names.
  // So I have to do a link between this id and the name
  var idToNode = {};
  data.nodes.forEach(function (n) {
    idToNode[n.id] = n;
  });
  // Cool, now if I do idToNode["2"].name I've got the name of the node with id 2

  // Add the links
  svg
    .selectAll('mylinks')
    .data(data.links)
    .enter()
    .append('path')
    .attr('d', function (d) {
      start = y(idToNode[d.source].name)    // X position of start node on the X axis
      end = y(idToNode[d.target].name)     // X position of end node
      return ['M', 50, start,    // the arc starts at the coordinate x=start, y=height-30 (where the starting node is)
        'A',                            // This means we're gonna build an elliptical arc
        (start - end)/2*4, ',',    // Next 2 lines are the coordinates of the inflexion point. Height of this point is proportional with start - end distance
        (start - end)/2, 0, 0, ',',
        start < end ? 1 : 0, end, ',', end] // We always want the arc on top. So if end is before start, putting 0 here turn the arc upside down.
        .join(' ');
    })
    .style("fill", "none")
    .attr("stroke", "black")

})

</script>
<!--
<style>

    path {
        fill: #505050;
        fill-opacity: 0.2;
    }

    circle{
        stroke-width: 1;
    }
</style>


Order:
    <select id="selectSort">
        <option value="Group">by Cluster</option>
        <option value="Frequency">by Frequency</option>
        <option value="Name">by Name</option>
    </select>

<script src="../assets/js/flavour_pairing.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<script>

var i,
    width = 1000,
    height = 1000,
    transitionTime = 2500,
    spacing = 11,
    margin = 20,
    nodeY = 380,
    nodes = pairing.nodes,
    links = pairing.links,
    colors = d3.scale.category20(),
    τ = 2 * Math.PI; // http://tauday.com/tau-manifesto

var svg = d3.select("body").append("svg")
        .attr("width", width)
        .attr("height", height)

function mapRange(value, inMin, inMax, outMin, outMax){
    var inVal = Math.min(Math.max(value, inMin), inMax);
    return outMin + (outMax-outMin) * ((inVal - inMin)/(inMax-inMin));
  }

// Set each node's value to the sum of all incoming and outgoing link values
var nodeValMin = 100000000,
    nodeValMax = 0;
for(i=0; i<nodes.length; i++){
    nodes[i].value = 0;
    nodes[i].displayOrder = i;
}
for(i=0; i<links.length; i++){
    var link = links[i];
        value = link.value;
    nodes[link.source].value += link.value;
    nodes[link.target].value += link.value;
}
for(i=0; i<nodes.length; i++){
    nodeValMin = Math.min(nodeValMin, nodes[i].value);
    nodeValMax = Math.max(nodeValMax, nodes[i].value);
}

var arcBuilder = d3.svg.arc()
    .startAngle(-τ/4)
    .endAngle(τ/4);
arcBuilder.setRadii = function(d){
        var arcHeight = 0.5 * Math.abs(d.x2-d.x1);
        this
            .innerRadius(arcHeight - d.thickness/2)
            .outerRadius(arcHeight + d.thickness/2);
    };
function arcTranslation(d){
    return "translate(" + (d.x1 + d.x2)/2 + "," + nodeY + ")";
}

//EC
function nodeDisplayX(node){
    return node.displayOrder * spacing + margin;
}

function nodeDisplayY(node){
    return node.displayOrder * spacing + margin;
}

var path;

function update(){
    // DATA JOIN
    path = svg.selectAll("path")
        .data(links);
    // UPDATE
    path.transition()
      .duration(transitionTime)
      .call(pathTween, null);
    // ENTER
    path.enter()
        .append("path")
        .attr("transform", function(d,i){
            d.x1 = nodeDisplayX(nodes[d.target]);
            d.x2 = nodeDisplayX(nodes[d.source]);
            d.y1 = nodeDisplayY(nodes[d.target]);
            d.y2 = nodeDisplayY(nodes[d.source]);
            return arcTranslation(d);
            })
        .attr("d", function(d,i){
            d.thickness = 1 + d.value;
            arcBuilder.setRadii(d);
            return arcBuilder();
            });

    // DATA JOIN
    var circle = svg.selectAll("circle")
        .data(nodes);
    // UPDATE
    circle.transition()
        .duration(transitionTime)
        .attr("cx", function(d,i) {return nodeDisplayX(d);})
        .attr("cy", function(d,i) {return nodeDisplayY(d);});
    // ENTER
    circle.enter()
        .append("circle")
        .attr("cy", function(d,i) {return nodeDisplayY(d);})
        .attr("cx", function(d,i) {return nodeDisplayX(d);})
        .attr("r", function(d,i) {return mapRange(d.value, nodeValMin, nodeValMax, 2.5, 13);})
        .attr("fill", function(d,i) {return colors(d.group);})
        .attr("stroke", function(d,i) {return d3.rgb(colors(d.group)).darker(1);});

    function textTransformX(node){
        return ((nodeDisplayX(node) - 5) + " " + (nodeY + 12) + ")");
    }

    function textTransformY(node){
      return ((nodeDisplayY(node) - 5) + " " + (nodeY + 12) + ")");
    }

    // DATA JOIN
    var text = svg.selectAll("text")
        .data(nodes);
    // UPDATE
    text.transition()
        .duration(transitionTime)
        .attr("x", function(d,i) {return nodeDisplayX(d) - 5;})
        .attr("y", function(d,i) {return nodeDisplayY(d) + 5;})
        .attr("transform", function(d,i) { return textTransformX(d); });

    // ENTER
    text.enter()
        .append("text")
        .attr("x", function(d,i) {return nodeDisplayY(d) + 5;})
        .attr("x", function(d,i) {return nodeDisplayX(d) - 5;})
        .attr("transform", function(d,i) { return textTransformY(d); })
        .attr("font-size", "10px")
        .text(function(d,i) {return d.nodeName;});
}

doSort(0);
update();

function pathTween(transition, dummy){
    transition.attrTween("d", function(d){
        var interpolateX1 = d3.interpolate(d.x1, nodeDisplayX(nodes[d.target]));
        var interpolateX2 = d3.interpolate(d.x2, nodeDisplayX(nodes[d.source]));
        var interpolateY1 = d3.interpolate(d.y1, nodeDisplayY(nodes[d.target]));
        var interpolateY2 = d3.interpolate(d.y2, nodeDisplayY(nodes[d.source]));
        return function(t){
            d.x1 = interpolateX1(t);
            d.x2 = interpolateX2(t);

            d.y1 = interpolateY1(t);
            d.y2 = interpolateY2(t);

            arcBuilder.setRadii(d);
            return arcBuilder();
        };
    });

    transition.attrTween("transform", function(d){
        var interpolateX1 = d3.interpolate(d.x1, nodeDisplayX(nodes[d.target]));
        var interpolateX2 = d3.interpolate(d.x2, nodeDisplayX(nodes[d.source]));
        var interpolateY1 = d3.interpolate(d.y1, nodeDisplayY(nodes[d.target]));
        var interpolateY2 = d3.interpolate(d.y2, nodeDisplayY(nodes[d.source]));

        return function(t){
            d.x1 = interpolateX1(t);
            d.x2 = interpolateX2(t);
            d.y1 = interpolateY1(t);
            d.y2 = interpolateY2(t);
            return arcTranslation(d);
        };
    });
}

d3.select("#selectSort").on("change", function() {
    doSort(this.selectedIndex);
    update();
});

function doSort(sortMethod){
    var nodeMap = [],
        sortFunciton;

    for(i=0; i<nodes.length; i++){
        var node = $.extend({index:i}, nodes[i]); // Shallow copy
        nodeMap.push(node);
    }

    if (sortMethod == 0){
        // GROUP
        sortFunction = function(a, b){
            return b.group - a.group;
        };
    }
    else if (sortMethod == 1){
        // FREQUENCY
        sortFunction = function(a, b){
            return b.value - a.value;
        };
    }
    else if(sortMethod == 2){
        // ALPHABETICAL
        sortFunction = function(a, b){
            return a.nodeName.localeCompare(b.nodeName)
        };
    }

    nodeMap.sort(sortFunction);
    for(i=0; i<nodeMap.length; i++){
        nodes[nodeMap[i].index].displayOrder = i;
    }
}

</script>
-->
