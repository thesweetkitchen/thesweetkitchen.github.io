---
title: Thank you for contacting me
permalink: "/thankyou/"
layout: page
meta_title: Contact us
teaser: Hello! Nice to meet you!
---

<form action="https://getsimpleform.com/messages?form_api_token=f32825134b2ff759f3aef85d548cf4e6" method="post">
  <!-- the redirect_to is optional, the form will redirect to the referrer on submission -->
  <input type='hidden' name='redirect_to' value='/thank-you.html' />
  <!-- all your input fields here.... -->
  Name
  <input type='text' name='name' required />

  Email
  <input type='email' name='email' required/>

  Message
  <textarea name="message" required></textarea>

  <input type='submit' value='Send message' />
</form>
