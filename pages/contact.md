---
title: Contact
permalink: "/contact/"
layout: page
header:
  image_fullwidth: /assets/img/header/contact-header.jpg
  subtitle: Feel free to send me any feedback or just to say hi. Love hearing from you!
breadcrumb: true
meta_title: contact
---

<form action="https://getsimpleform.com/messages?form_api_token=f32825134b2ff759f3aef85d548cf4e6" method="post">
  <!-- the redirect_to is optional, the form will redirect to the referrer on submission -->
  <input type='hidden' name='redirect_to' value='https://thesweet.kitchen/thank-you' />
  <!-- all your input fields here.... -->
  Name
  <input type='text' name='name' required />

  Email
  <input type='email' name='email' required/>

  Message
  <textarea name="message" required></textarea>

  <input type='submit' value='Send message' class='button tiny radius' />
</form>
