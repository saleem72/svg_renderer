//

import 'dart:ui';

import 'package:flutter/material.dart';

const String logoString = """
<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 519.17 514"><defs><style>.cls-1{fill:url(#linear-gradient);}.cls-2{opacity:0.84;fill:url(#linear-gradient-2);}.cls-3{fill:url(#linear-gradient-3);}.cls-4{opacity:0.86;fill:url(#linear-gradient-4);}.cls-5{fill:url(#linear-gradient-5);}.cls-6{fill:url(#linear-gradient-6);}.cls-7{fill:url(#linear-gradient-7);}.cls-8{opacity:0.18;}</style><linearGradient id="linear-gradient" x1="174.04" y1="90.91" x2="242.71" y2="255.68" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#6f2597"/><stop offset="0.22" stop-color="#883395"/><stop offset="0.68" stop-color="#c85890"/><stop offset="0.9" stop-color="#e96a8d"/></linearGradient><linearGradient id="linear-gradient-2" x1="107.54" y1="297.7" x2="368.99" y2="297.7" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#e96a8d"/><stop offset="0.3" stop-color="#e96d8f"/><stop offset="0.53" stop-color="#eb7797"/><stop offset="0.75" stop-color="#ed88a4"/><stop offset="0.95" stop-color="#f19fb6"/><stop offset="1" stop-color="#f2a6bb"/></linearGradient><linearGradient id="linear-gradient-3" x1="172.72" y1="173.38" x2="371.23" y2="173.38" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#5e1f88"/><stop offset="0.41" stop-color="#9a417d"/><stop offset="1" stop-color="#f5756b"/></linearGradient><linearGradient id="linear-gradient-4" x1="0.48" y1="168.7" x2="369.86" y2="168.7" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#6f2597"/><stop offset="0.21" stop-color="#883395"/><stop offset="0.65" stop-color="#c85890"/><stop offset="0.86" stop-color="#e96a8d"/></linearGradient><linearGradient id="linear-gradient-5" x1="61.59" y1="288.13" x2="256.7" y2="288.13" xlink:href="#linear-gradient-4"/><linearGradient id="linear-gradient-6" x1="434.34" y1="175.38" x2="519.17" y2="175.38" xlink:href="#linear-gradient"/><linearGradient id="linear-gradient-7" x1="229.09" y1="49.42" x2="303.95" y2="227.07" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#6f2597"/><stop offset="0.04" stop-color="#782a96"/><stop offset="0.29" stop-color="#a84592"/><stop offset="0.51" stop-color="#cc598f"/><stop offset="0.68" stop-color="#e1668e"/><stop offset="0.8" stop-color="#e96a8d"/></linearGradient></defs><path class="cls-1" d="M276.61,233.07v0a130.65,130.65,0,0,1-12.53,10.77l-.76.56c-1,.74-1.95,1.44-2.9,2.12s-1.88,1.29-2.79,1.9a118.57,118.57,0,0,1-18.93,10.48c.12-.08.23-.17.34-.26a83.37,83.37,0,0,0,13.75-12.86q1.58-1.81,3-3.74a82.91,82.91,0,0,0,16.92-44.83A83.84,83.84,0,0,0,112,158.41a136.36,136.36,0,0,1,50.81-76.72c2.18-1.6,4.37-3.14,6.62-4.63l-.07,0h0A83.29,83.29,0,0,1,192.7,64.75s.05,0,.08,0h0c4.19.65,63.8,11.12,88.45,67.18C303.3,182,279.61,227.59,276.61,233.07Z" transform="translate(27 2)"/><path class="cls-2" d="M256.67,426.36C148,353.72,95.45,249.12,109.88,169a136.37,136.37,0,0,0,62,137.24C203.41,326.18,239.71,329,272,322.79c35.18-6.77,61.47-27.64,84.3-54.05,1.78-2.05,10.92-12.79,12.22-12s.55,5.4-6.34,17.09C353.58,288.32,257.56,427,256.67,426.36Z" transform="translate(27 2)"/><path class="cls-3" d="M369.25,179.93q-.51,3-1.15,5.95a133.39,133.39,0,0,1-74.23,93.18,136.48,136.48,0,0,1-120.37-2.93,1.5,1.5,0,0,1,1-2.8,84.86,84.86,0,0,0,20.7,1.25A82.91,82.91,0,0,0,239,258.67l.42-.3a119.24,119.24,0,0,0,18.12-10c.92-.6,1.86-1.24,2.81-1.9s1.94-1.36,2.93-2.09l.76-.56a130.42,130.42,0,0,0,13.29-11.35h0c12.46-12.15,24.51-29,30.16-51.44a110.24,110.24,0,0,0-.83-56.17c-7.41-27.2-24.78-52.28-50.09-69.76a132.38,132.38,0,0,1,18.59,3,135.47,135.47,0,0,1,60.26,31.39,137.69,137.69,0,0,1,18,19.62,135.17,135.17,0,0,1,16.41,28.38c.4,2.77.7,5.57.93,8.34A136.31,136.31,0,0,1,369.25,179.93Z" transform="translate(27 2)"/><path class="cls-4" d="M369.86,137.49a135.17,135.17,0,0,0-16.41-28.38,137.69,137.69,0,0,0-18-19.62A135.47,135.47,0,0,0,275.2,58.1a132.38,132.38,0,0,0-18.59-3c-4-.36-8.09-.56-12.2-.56-1.31,0-2.6,0-3.89.07-.19,0-.4,0-.6,0-1.18,0-2.35.08-3.53.15a1.27,1.27,0,0,0-.27,0c-2.73.16-5.49.4-8.18.74h0c-1.06.12-2.12.27-3.17.42-1.55.24-3.1.49-4.64.76s-3.15.6-4.74.94c-1,.21-2,.46-3.07.72-.76.16-1.53.36-2.29.57-.55.12-1.07.27-1.63.44-.74.19-1.5.41-2.24.62l-2.9.88-.87.28c-2.85.93-5.67,1.94-8.44,3.05l-4.68,1.59-.16.06c-1.87.75-3.69,1.53-5.46,2.32q-3.3,1.48-6.38,3c-28.66,14.53-50.24,36.78-66.48,62.36C60.39,213,61.38,324.28,61.64,336.43L39.76,306.78l-.36-.49h0A190,190,0,0,1,190.56,1,194,194,0,0,1,210.72,2q6.71.71,13.35,1.88c4.68.84,9.35,1.85,14,3q9,2.34,17.79,5.52c3.32,1.21,6.62,2.52,9.86,3.94a185.92,185.92,0,0,1,19.41,9.71c1.23.73,2.48,1.45,3.68,2.18.43.26.86.52,1.28.79a188.73,188.73,0,0,1,21.37,15.24,191,191,0,0,1,22.84,22.31q3.32,3.83,6.49,7.84c13.22,16.76,24.14,36,28.12,57C369.25,133.49,369.56,135.48,369.86,137.49Z" transform="translate(27 2)"/><path class="cls-5" d="M256.7,426.37l-59.65,85a1.5,1.5,0,0,1-2.4.06L69,346.4l-7.37-10C61.39,324.28,60.4,213,110.76,133.64c16.24-25.57,37.82-47.83,66.47-62.36,2.06-1,4.18-2.06,6.39-3,1.76-.79,3.58-1.57,5.45-2.32l.16-.06,4.69-1.59-1.12.46h0l-.09,0a83.65,83.65,0,0,0-23.34,12.36c-2.22,1.47-4.39,3-6.52,4.58A136.35,136.35,0,0,0,112,158.41q-.37,1.53-.72,3.06v0h0c-.47,2.16-.9,4.34-1.26,6.53,0,.2-.07.4-.1.61l-.06.38a153,153,0,0,0-2.26,32.25c0,.6,0,1.19.07,1.79,0,.35,0,.7,0,1.05s0,.74,0,1.11.06,1,.09,1.43l.12,1.81c0,.54.08,1.09.14,1.65s.11,1.31.17,2,.12,1.22.18,1.82q.57,5.46,1.48,11c.2,1.23.42,2.46.64,3.69.11.61.23,1.23.36,1.85s.22,1.16.34,1.74c.26,1.27.53,2.54.82,3.82.12.52.23,1.05.35,1.56.17.73.34,1.45.52,2.17s.31,1.25.46,1.87.35,1.35.52,2,.31,1.14.46,1.71c.29,1.05.58,2.11.89,3.17.16.58.34,1.16.51,1.75.81,2.73,1.69,5.49,2.62,8.24.42,1.26.86,2.51,1.31,3.77h0c.4,1.1.8,2.2,1.21,3.31q1.24,3.3,2.59,6.63c.45,1.1.91,2.21,1.38,3.31,1.07,2.52,2.19,5.05,3.35,7.57h0c.59,1.26,1.19,2.53,1.79,3.79s1.23,2.53,1.86,3.78l1,1.91c.65,1.25,1.3,2.52,2,3.77h0c.67,1.27,1.35,2.52,2,3.79q3.12,5.65,6.55,11.31h0q2.46,4,5.08,8.06c.35.53.7,1.08,1.06,1.62s.85,1.28,1.29,1.93q1.93,2.88,4,5.76c1.35,1.92,2.73,3.84,4.13,5.74.94,1.27,1.89,2.55,2.85,3.82,24.06,31.7,55.83,61.9,94.84,88Z" transform="translate(27 2)"/><circle class="cls-6" cx="476.75" cy="175.38" r="42.41"/><path class="cls-7" d="M307.53,181.07c-5.65,22.44-17.69,39.29-30.16,51.44h0a130.42,130.42,0,0,1-13.29,11.35,130.65,130.65,0,0,0,12.53-10.77v0c3-5.48,26.69-51,4.64-101.17C256.6,75.84,197,65.37,192.8,64.72l1.11-.46c2.77-1.11,5.59-2.12,8.45-3.05l.87-.28,2.89-.88c.75-.21,1.51-.43,2.24-.62.56-.17,1.09-.32,1.64-.44.76-.21,1.52-.41,2.29-.57,1-.26,2-.51,3.06-.72,1.59-.34,3.16-.66,4.74-.94s3.09-.52,4.64-.76c1.06-.15,2.12-.3,3.17-.42h0c2.69-.34,5.45-.58,8.18-.74a1.32,1.32,0,0,1,.27,0c1.19-.07,2.35-.13,3.53-.15.2,0,.41,0,.6,0,1.29,0,2.58-.07,3.89-.07,4.11,0,8.17.2,12.2.56C281.92,72.62,299.3,97.7,306.7,124.9A110.24,110.24,0,0,1,307.53,181.07Z" transform="translate(27 2)"/><g class="cls-8"><image width="171" height="282" xlink:href="data:image/png;base64,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"/></g></svg>
""";

const String tigerString = """
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<svg id="svg2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 900 900" version="1.1">
 <g id="g4" fill="none" transform="matrix(1.7656463,0,0,1.7656463,394.90716,255.00942) skewX(-10)">
  <g id="g6" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path8" d="m-122.3,84.285s0.1,1.894-0.73,1.875c-0.82-0.019-17.27-48.094-37.8-45.851,0,0,17.78-7.353,38.53,43.976z"/>
  </g>
  <g id="g10" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path12" d="m-118.77,81.262s-0.55,1.816-1.32,1.517c-0.77-0.298,0.11-51.104-19.95-55.978,0,0,19.22-0.864,21.27,54.461z"/>
  </g>
  <g id="g14" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path16" d="m-91.284,123.59s1.636,0.96,1.166,1.64c-0.471,0.67-49.642-12.13-59.102,6.23,0,0,3.68-18.89,57.936-7.87z"/>
  </g>
  <g id="g18" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path20" d="m-94.093,133.8s1.856,0.4,1.622,1.19c-0.233,0.79-50.939,4.13-54.129,24.53,0,0-2.46-19.08,52.507-25.72z"/>
  </g>
  <g id="g22" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path24" d="m-98.304,128.28s1.778,0.66,1.432,1.41-50.998-3.34-57.128,16.37c0,0,0.35-19.24,55.696-17.78z"/>
  </g>
  <g id="g26" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path28" d="m-109.01,110.07s1.31,1.38,0.67,1.9-44.38-25.336-58.53-10.29c0,0,8.74-17.147,57.86,8.39z"/>
  </g>
  <g id="g30" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path32" d="m-116.55,114.26s1.45,1.22,0.88,1.81c-0.58,0.59-46.97-20.148-59.32-3.6,0,0,6.74-18.023,58.44,1.79z"/>
  </g>
  <g id="g34" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path36" d="m-119.15,118.34s1.6,1,1.11,1.67c-0.49,0.66-49.27-13.56-59.25,4.51,0,0,4.22-18.77,58.14-6.18z"/>
  </g>
  <g id="g38" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path40" d="m-108.42,118.95s1.12,1.53,0.42,1.97c-0.7,0.43-40.77-30.818-56.73-17.71,0,0,10.87-15.884,56.31,15.74z"/>
  </g>
  <g id="g42" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path44" d="m-128.2,90s0.6,1.8-0.2,2-29.4-41.8-48.6-34.2c0,0,15.2-11.8,48.8,32.2z"/>
  </g>
  <g id="g46" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path48" d="m-127.5,96.979s0.97,1.629,0.23,1.996c-0.74,0.368-37.72-34.476-54.83-22.914,0,0,12.3-14.8,54.6,20.918z"/>
  </g>
  <g id="g50" stroke-width="0.17200001" stroke="#000" fill="#FFF">
   <path id="path52" d="m-127.62,101.35s1.12,1.53,0.42,1.97c-0.7,0.43-40.77-30.818-56.73-17.713,0,0,10.87-15.881,56.31,15.743z"/>
  </g>
  <g id="g54" stroke="#000" fill="#FFF">
   <path id="path56" d="m-129.83,103.06c0.5,6.05,1.49,12.62,3.23,15.74,0,0-3.6,12.4,5.2,25.6,0,0-0.4,7.2,1.2,10.4,0,0,4,8.4,8.8,9.2,3.88,0.65,12.607,3.72,22.468,5.12,0,0,17.132,14.08,13.932,26.88,0,0-0.4,16.4-4,18,0,0,11.6-11.2,2,5.6l-4.4,18.8s25.6-21.6,10-3.2l-10,26s19.6-18.4,12.4-10l-3.2,8.8s43.2-27.2,12.4,2.4c0,0,8-3.6,12.4-0.8,0,0,6.8-1.2,6,0.4,0,0-20.8,10.4-24.4,28.8,0,0,8.4-10,5.2,0.8l0.4,11.6s4-21.6,3.6,16c0,0,19.2-18,7.6,2.8v16.8s15.2-16.4,8.8-3.6c0,0,10-8.8,6,6.4,0,0-0.8,10.4,3.6-0.8,0,0,16-30.6,10-4.4,0,0-0.8,19.2,4,4.4,0,0,0.4,10.4,9.6,17.6,0,0-1.2-50.8,11.6-14.8l4,16.4s2.8-9.2,2.4-14.4l8,8s15.2-22.8,12-9.6c0,0-7.6,16-6,20.8,0,0,16.8-34.8,18-36.4,0,0-2,42.4,8.8,6.4,0,0,5.6,12,2.8,16.4,0,0,8-8,7.2-11.2,0,0,4.6-8.2,7.4,5.4,0,0,1.8,9.4,3.4,6.2,0,0,4,24,5.2,1.2,0,0,1.6-13.6-5.6-25.2,0,0,0.8-3.2-2-7.2,0,0,13.6,21.6,6.4-7.2,0,0,11.201,8,12.401,8,0,0-13.601-23.2-4.801-18.4,0,0-5.2-10.4,12.801,1.6,0,0-16.001-16,1.6-6.4,0,0,7.999,6.4,0.4-3.6,0,0-14.401-16,7.599,2,0,0,11.6,16.4,12.4,19.2,0,0-10-29.2-14.4-32,0,0,8.4-36.4,49.6-20.8,0,0,6.8,17.2,11.2-1.2,0,0,12.8-6.4,24,21.2,0,0,4-13.6,3.2-16.4,0,0,6.8,1.2,6,0,0,0,13.2,4.4,14.4,3.6,0,0,6.8,6.8,7.2,3.2,0,0,9.2,2.8,7.2-0.8,0,0,8.8,15.6,9.2,19.2l2.4-14,2,2.8s1.6-7.6,0.8-8.8,20,6.8,24.8,27.6l2,8.4s6-14.8,4.4-18.8c0,0,5.2,0.8,5.6,5.2,0,0,4-23.2-0.8-29.2,0,0,4.4-0.8,5.6,2.8v-7.2s7.2,0.8,7.2-1.6c0,0,4.4-4,6.4,0.8,0,0-12.4-35.2,6-16,0,0,7.2,10.8,3.6-8s-7.6-20.4-2.8-20.8c0,0,0.8-3.6-1.2-5.2s1.2,0,1.2,0,4.8,4-0.4-18c0,0,6.4,1.6-5.6-27.6,0,0,2.8-2.4-1.2-10.8,0,0,8,4.4,10.8,2.8,0,0-0.4-1.6-3.6-5.6,0,0-21.6-54.8-1.2-32.8,0,0,11.85,13.55,5.45-9.25,0,0-9.11-24.009-8.33-28.305l-429.55,23.015z"/>
  </g>
  <g id="g58" stroke="#000" fill="#cc7226">
   <path id="path60" d="m299.72,80.245c0.62,0.181,2.83,1.305,4.08,2.955,0,0,6.8,10.8,1.6-7.6,0,0-9.2-28.8-0.4-17.6,0,0,6,7.2,2.8-6.4-3.86-16.427-6.4-22.8-6.4-22.8s11.6,4.8-15.2-34.8l8.8,3.6s-19.6-39.6-41.2-44.8l-8-6s38.4-38,25.6-74.8c0,0-6.8-5.2-16.4,4,0,0-6.4,4.8-12.4,3.2,0,0-30.8,1.2-32.8,1.2s-36.8-37.2-102.4-19.6c0,0-5.2,2-9.599,0.8,0,0-18.401-16-67.201,6.8,0,0-10,2-11.6,2s-4.4,0-12.4,6.4-8.4,7.2-10.4,8.8c0,0-16.4,11.2-21.2,12,0,0-11.6,6.4-16,16.4l-3.6,1.2s-1.6,7.2-2,8.4c0,0-4.8,3.6-5.6,9.2,0,0-8.8,6-8.4,10.4,0,0-1.6,5.2-2.4,10,0,0-7.2,4.8-6.4,7.6,0,0-7.6,14-6.4,20.8,0,0-6.4-0.4-9.2,2,0,0-0.8,4.8-2.4,5.2,0,0-2.8,1.2-0.4,5.2,0,0-1.6,2.8-2,4.4,0,0,0.8,2.8-3.6,8.4,0,0-6.4,18.8-4.4,24,0,0,0.4,4.8-2.4,6.4,0,0-3.6-0.4,4.8,11.6,0,0,0.8,1.2-2.4,3.6,0,0-17.2,3.6-19.6,20,0,0-13.6,14.8-13.6,20,0,2.305,0.27,5.452,0.97,10.06,0,0-0.57,8.34,27.03,9.14s402.72-31.355,402.72-31.355z"/>
  </g>
  <g id="g62" fill="#cc7226">
   <path id="path64" d="m-115.6,102.6c-25-39.4-10.6,17-10.6,17,8.8,34.4,138.4-3.2,138.4-3.2s168.8-30.4,180-34.4,106.4,2.4,106.4,2.4l-5.6-16.8c-64.8-46.4-84-23.2-97.6-27.2s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2-31.74-22.951-16.8,8.8c16,34-58.4,39.2-75.2,28s7.2,18.4,7.2,18.4c18.4,20-16,3.2-16,3.2-34.4-12.8-58.4,12.8-61.6,13.6s-8,4-8.8-2.4-8.31-23.101-40,3.2c-20,16.6-33.8-5.4-33.8-5.4l-2.8,11.6z"/>
  </g>
  <g id="g66" fill="#e87f3a">
   <path id="path68" d="m133.51,25.346c-6.4,0.8-31.77-22.939-16.8,8.8,16.6,35.2-58.4,39.2-75.2,28-16.801-11.2,7.2,18.4,7.2,18.4,18.4,20.004-16.001,3.2-16.001,3.2-34.4-12.8-58.4,12.8-61.6,13.6s-8,4.004-8.8-2.4c-0.8-6.4-8.179-22.934-40,3.2-21.236,17.344-34.729-4.109-34.729-4.109l-3.2,10.113c-25-39.804-9.93,18.51-9.93,18.51,8.81,34.4,139.06-4.51,139.06-4.51s168.8-30.404,180-34.404,105.53,2.327,105.53,2.327l-5.53-17.309c-64.8-46.4-83.2-22.618-96.8-26.618s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2z"/>
  </g>
  <g id="g70" fill="#ea8c4d">
   <path id="path72" d="m134.82,27.091c-6.4,0.8-31.14-23.229-16.8,8.8,16.2,36.201-58.401,39.201-75.201,28.001s7.2,18.4,7.2,18.4c18.4,19.998-16,3.2-16,3.2-34.4-12.8-58.401,12.8-61.601,13.6s-8,3.998-8.8-2.4c-0.8-6.4-8.048-22.767-40,3.2-22.473,18.088-35.658-2.818-35.658-2.818l-3.6,8.616c-23.8-38.998-9.25,20.02-9.25,20.02,8.8,34.4,139.71-5.82,139.71-5.82s168.8-30.398,180-34.398,104.65,2.254,104.65,2.254l-5.45-17.818c-64.8-46.4-82.4-22.037-96-26.037s-11.2,5.6-14.4,6.401c-3.2,0.8-42.4-24.001-48.8-23.201z"/>
  </g>
  <g id="g74" fill="#ec9961">
   <path id="path76" d="m136.13,28.837c-6.4,0.8-31.13-23.232-16.8,8.8,16.8,37.556-58.936,38.845-75.202,28-16.8-11.2,7.2,18.4,7.2,18.4,18.4,20.003-16,3.2-16,3.2-34.4-12.8-58.4,12.803-61.6,13.603s-8,4-8.8-2.403c-0.8-6.4-7.917-22.598-40.001,3.203-23.709,18.83-36.587-1.53-36.587-1.53l-4,7.13c-21.8-36.803-8.58,21.52-8.58,21.52,8.8,34.4,140.37-7.12,140.37-7.12s168.8-30.403,180-34.403,103.78,2.182,103.78,2.182l-5.38-18.327c-64.8-46.401-81.6-21.455-95.2-25.455s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2z"/>
  </g>
  <g id="g78" fill="#eea575">
   <path id="path80" d="m137.44,30.583c-6.4,0.8-30.63-23.454-16.8,8.8,16.8,39.2-58.403,39.2-75.203,28s7.2,18.4,7.2,18.4c18.4,19.997-16,3.2-16,3.2-34.4-12.8-58.4,12.797-61.6,13.597s-8,4-8.8-2.4c-0.8-6.397-7.785-22.428-40,3.2-24.946,19.58-37.507-0.23-37.507-0.23l-4.4,5.63c-19.8-34.798-7.91,23.04-7.91,23.04,8.8,34.4,141.02-8.44,141.02-8.44s168.8-30.397,180-34.397,102.91,2.109,102.91,2.109l-5.31-18.837c-64.8-46.4-80.8-20.872-94.4-24.872s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2z"/>
  </g>
  <g id="g82" fill="#f1b288">
   <path id="path84" d="m138.75,32.328c-6.4,0.8-32.37-22.651-16.8,8.8,19.2,38.8-58.404,39.2-75.204,28s7.2,18.4,7.2,18.4c18.4,20.002-16,3.2-16,3.2-34.4-12.8-58.4,12.802-61.6,13.602s-8,4-8.8-2.4c-0.8-6.402-7.654-22.265-40,3.2-26.182,20.33-38.436,1.05-38.436,1.05l-4.8,4.15c-18-33.202-7.24,24.54-7.24,24.54,8.8,34.4,141.68-9.74,141.68-9.74s168.8-30.402,180-34.402,102.03,2.036,102.03,2.036l-5.23-19.345c-64.8-46.4-80-20.291-93.6-24.291s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2z"/>
  </g>
  <g id="g86" fill="#f3bf9c">
   <path id="path88" d="m140.06,34.073c-6.4,0.8-32.75-22.46-16.8,8.8,20.4,40.001-58.405,39.201-75.205,28.001s7.2,18.4,7.2,18.4c18.4,19.996-16,3.2-16,3.2-34.4-12.8-58.4,12.796-61.6,13.596s-8,4-8.8-2.4c-0.8-6.396-7.523-22.092-40,3.2-27.419,21.08-39.365,2.35-39.365,2.35l-5.2,2.65c-16-30.196-6.56,26.06-6.56,26.06,8.8,34.4,142.32-11.06,142.32-11.06s168.8-30.396,180-34.396,101.16,1.963,101.16,1.963l-5.16-19.854c-64.8-46.4-79.2-19.709-92.8-23.709-13.6-4.001-11.2,5.6-14.4,6.4s-42.4-24.001-48.8-23.201z"/>
  </g>
  <g id="g90" fill="#f5ccb0">
   <path id="path92" d="m141.36,35.819c-6.4,0.8-33.84-21.875-16.8,8.8,22,39.6-58.396,39.2-75.196,28s7.2,18.4,7.2,18.4c18.4,20.001-16,3.2-16,3.2-34.4-12.8-58.4,12.801-61.6,13.601s-8,4-8.8-2.4c-0.8-6.401-7.391-21.928-40,3.2-28.655,21.82-40.294,3.64-40.294,3.64l-5.6,1.16c-14.4-28.401-5.89,27.56-5.89,27.56,8.8,34.4,142.98-12.36,142.98-12.36s168.8-30.401,180-34.401,100.3,1.891,100.3,1.891l-5.1-20.364c-64.8-46.4-78.4-19.127-92-23.127s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2z"/>
  </g>
  <g id="g94" fill="#f8d8c4">
   <path id="path96" d="m142.67,37.565c-6.4,0.8-33.84-21.876-16.8,8.8,22,39.6-58.396,39.2-75.196,28s7.2,18.4,7.2,18.4c18.4,19.995-16,3.2-16,3.2-34.401-12.8-58.401,12.795-61.601,13.595s-8,4-8.8-2.4-7.259-21.755-40,3.2c-29.891,22.57-41.213,4.93-41.213,4.93l-6-0.33c-13.61-26.396-5.22,29.08-5.22,29.08,8.8,34.4,143.63-13.68,143.63-13.68s168.8-30.395,180-34.395,99.42,1.818,99.42,1.818l-5.01-20.873c-64.81-46.4-77.61-18.545-91.21-22.545s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2z"/>
  </g>
  <g id="g98" fill="#fae5d7">
   <path id="path100" d="m143.98,39.31c-6.4,0.8-33.45-22.087-16.8,8.8,22,40.8-58.397,39.2-75.197,28s7.2,18.4,7.2,18.4c18.4,20-16,3.2-16,3.2-34.4-12.8-58.4,12.8-61.6,13.6-3.201,0.8-8.001,4-8.801-2.4s-7.128-21.592-40,3.2c-31.127,23.31-42.142,6.22-42.142,6.22l-6.4-1.82c-13-24-4.55,30.58-4.55,30.58,8.8,34.4,144.29-14.98,144.29-14.98s168.8-30.4,180-34.4,98.55,1.746,98.55,1.746l-4.95-21.382c-64.8-46.401-76.8-17.964-90.4-21.964s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2z"/>
  </g>
  <g id="g102" fill="#fcf2eb">
   <path id="path104" d="m145.29,41.055c-6.4,0.8-32.37-22.644-16.8,8.8,21.2,42.801-58.398,39.201-75.198,28.001s7.2,18.4,7.2,18.4c18.4,20.004-16,3.2-16,3.2-34.4-12.8-58.4,12.804-61.6,13.604s-8,4-8.8-2.4-6.997-21.428-40,3.2c-32.365,24.05-43.072,7.5-43.072,7.5l-6.8-3.3c-12.8-23.204-3.87,32.09-3.87,32.09,8.8,34.4,144.94-16.29,144.94-16.29s168.8-30.4,180-34.404c11.2-4,97.67,1.674,97.67,1.674l-4.87-21.893c-64.8-46.4-76-17.381-89.6-21.381-13.6-4.001-11.2,5.6-14.4,6.4s-42.4-24.001-48.8-23.201z"/>
  </g>
  <g id="g106" fill="#FFF">
   <path id="path108" d="m-115.8,119.6c-12.8-22-3.2,33.6-3.2,33.6,8.8,34.4,145.6-17.6,145.6-17.6s168.8-30.4,180-34.4,96.8,1.6,96.8,1.6l-4.8-22.4c-64.8-46.4-75.2-16.8-88.8-20.8s-11.2,5.6-14.4,6.4-42.4-24-48.8-23.2-31.62-23.007-16.8,8.8c22.23,47.707-60.759,37.627-75.2,28-16.8-11.2,7.2,18.4,7.2,18.4,18.4,20-16,3.2-16,3.2-34.4-12.8-58.4,12.8-61.6,13.6s-8,4-8.8-2.4-6.865-21.256-40,3.2c-33.6,24.8-44,8.8-44,8.8l-7.2-4.8z"/>
  </g>
  <g id="g110" fill="#000">
   <path id="path112" d="m-74.2,149.6s-7.2,11.6,13.6,24.8c0,0,1.4,1.4-16.6-2.8,0,0-6.2-2-7.8-12.4,0,0-4.8-4.4-9.6-10s20.4,0.4,20.4,0.4z"/>
  </g>
  <g id="g114" fill="#CCC">
   <path id="path116" d="m65.8,102s17.698,26.82,17.1,31.6c-1.3,10.4-1.5,20,1.7,24,3.201,4,12.001,37.2,12.001,37.2s-0.4,1.2,11.999-36.8c0,0,11.6-16-8.4-34.4,0,0-35.2-28.8-34.4-21.6z"/>
  </g>
  <g id="g118" fill="#000">
   <path id="path120" d="m-54.2,176.4s11.2,7.2-3.2,38.4l6.4-2.4s-0.8,11.2-4,13.6l7.2-3.2s4.8,8,0.8,12.8c0,0,16.8,8,16,14.4,0,0,6.4-8,2.4-14.4s-11.2-2.4-10.4-20.8l-8.8,3.2s5.6-8.8,5.6-15.2l-8,2.4s15.469-26.58,4.8-28c-6-0.8-8.8-0.8-8.8-0.8z"/>
  </g>
  <g id="g122" fill="#CCC">
   <path id="path124" d="m-21.8,193.2s2.8-4.4,0-3.6-34,15.6-40,25.2c0,0,34.4-24.4,40-21.6z"/>
  </g>
  <g id="g126" fill="#CCC">
   <path id="path128" d="m-11.4,201.2s2.8-4.4,0-3.6-34,15.6-40,25.2c0,0,34.4-24.4,40-21.6z"/>
  </g>
  <g id="g130" fill="#CCC">
   <path id="path132" d="m1.8,186s2.8-4.4,0-3.6-34,15.6-40,25.2c0,0,34.4-24.4,40-21.6z"/>
  </g>
  <g id="g134" fill="#CCC">
   <path id="path136" d="m-21.4,229.6s0-6-2.8-5.2-38.8,18.4-44.8,28c0,0,42-25.6,47.6-22.8z"/>
  </g>
  <g id="g138" fill="#CCC">
   <path id="path140" d="m-20.2,218.8s1.2-4.8-1.6-4c-2,0-28.4,11.6-34.4,21.2,0,0,29.6-21.6,36-17.2z"/>
  </g>
  <g id="g142" fill="#CCC">
   <path id="path144" d="m-34.6,266.4-10,7.6s10.4-7.6,14-6.4c0,0-6.8,11.2-7.6,16.4,0,0,10.4-12.8,16-12.4,0,0,7.6,0.4,7.6,11.2,0,0,5.6-10.4,8.8-10,0,0,1.2,6.4,0,13.2,0,0,4-7.6,8-6,0,0,6.4-2,5.6,9.6,0,0,0,10.4-0.8,13.2,0,0,5.6-26.4,8-26.8,0,0,8-1.2,12.8,7.6,0,0-4-7.6,0.8-5.6,0,0,10.8,1.6,14,8.4,0,0-6.8-12-1.2-8.8l8,6.4s8.4,21.2,10.4,22.8c0,0-7.6-21.6-6-21.6,0,0-2-12,3.2,2.8,0,0-3.2-14,2.4-13.2s10,10.8,18.4,8.4c0,0,9.601,5.6,11.601-63.6l-124,46.8z"/>
  </g>
  <g id="g146" fill="#000">
   <path id="path148" d="m-29.8,173.6s14.8-6,54.8,0c0,0,7.2,0.4,14-8.4s33.6-16,40-14l9.601,6.4,0.8,1.2s12.399,10.4,12.799,18-14.399,55.6-24,71.6c-9.6,16-19.2,28.4-38.4,26,0,0-20.8-4-46.4,0,0,0-29.2-1.6-32-9.6s11.2-23.2,11.2-23.2,4.4-8.4,3.2-22.8-0.8-42.4-5.6-45.2z"/>
  </g>
  <g id="g150" fill="#e5668c">
   <path id="path152" d="M-7.8,175.6c8.4,18.4-21.2,83.6-21.2,83.6-2,1.6,12.66,7.65,22.8,5.2,10.946-2.64,51.2,1.6,51.2,1.6,23.6-15.6,36.4-60,36.4-60s10.401-24-7.2-27.2c-17.6-3.2-82-3.2-82-3.2z"/>
  </g>
  <g id="g154" fill="#b23259">
   <path id="path156" d="m-9.831,206.5c3.326-12.79,4.91-24.59,2.031-30.9,0,0,62.4,6.4,73.6-14.4,4.241-7.87,19.001,22.8,18.6,32.4,0,0-63,14.4-77.8,3.2l-16.431,9.7z"/>
  </g>
  <g id="g158" fill="#a5264c">
   <path id="path160" d="m-5.4,222.8s2,7.2-0.4,11.2c0,0-1.6,0.8-2.8,1.2,0,0,1.2,3.6,7.2,5.2,0,0,2,4.4,4.4,4.8s7.2,6,11.2,4.8,15.2-5.2,15.2-5.2,5.6-3.2,14.4,0.4c0,0,2.375-0.8,2.8-4.8,0.5-4.7,3.6-8.4,5.6-10.4s11.6-14.8,10.4-15.2-68,8-68,8z"/>
  </g>
  <g id="g162" stroke="#000" fill="#ff727f">
   <path id="path164" d="m-9.8,174.4s-2.8,22.4,0.4,30.8,2.4,10.4,1.6,14.4,3.6,14,9.2,20l12,1.6s15.2-3.6,24.4-0.8c0,0,8.994,1.34,12.4-13.6,0,0,4.8-6.4,12-9.2s14.4-44.4,10.4-52.4-18.4-12.4-34.4,3.2-18-1.2-48,6z"/>
  </g>
  <g id="g166" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path168" d="m-8.2,249.2s-0.8-2-5.2-2.4c0,0-22.4-3.6-30.8-16,0,0-6.8-5.6-2.4,6,0,0,10.4,20.4,17.2,23.2,0,0,16.4,4,21.2-10.8z"/>
  </g>
  <g id="g170" fill="#cc3f4c">
   <path id="path172" d="m71.742,185.23c0.659-7.91,2.612-16.52,0.858-20.03-6.446-12.89-23.419-7.5-34.4,3.2-16,15.6-18-1.2-48,6,0,0-1.745,13.96-0.905,23.98,0,0,37.305-11.58,38.105-5.98,0,0,1.6-3.2,10.8-3.2s31.942-1.17,33.542-3.97z"/>
  </g>
  <g id="g174" stroke-width="2" stroke="#a51926">
   <path id="path176" d="m28.6,175.2s4.8,4.8,1.2,14.4c0,0-14.4,16-12.4,30"/>
  </g>
  <g id="g178" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path180" d="m-19.4,260s-4.4-12.8,4.4-6l3.6,3.6c-1.2,1.6-6.8,5.6-8,2.4z"/>
  </g>
  <g id="g182" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path184" d="m-14.36,261.2s-3.52-10.24,3.52-4.8l2.88,2.88c-4.56,1.28,0,3.84-6.4,1.92z"/>
  </g>
  <g id="g186" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path188" d="m-9.56,261.2s-3.52-10.24,3.52-4.8l2.88,2.88c-3.36,1.28,0,3.84-6.4,1.92z"/>
  </g>
  <g id="g190" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path192" d="m-2.96,261.4s-3.52-10.24,3.52-4.8c0,0,4.383,2.33,2.881,2.88-2.961,1.08,0,3.84-6.401,1.92z"/>
  </g>
  <g id="g194" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path196" d="m3.52,261.32s-3.52-10.24,3.521-4.8l2.88,2.88c-0.96,1.28,0,3.84-6.401,1.92z"/>
  </g>
  <g id="g198" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path200" d="m10.2,262s-4.8-12.4,4.4-6l3.6,3.6c-1.2,1.6,0,4.8-8,2.4z"/>
  </g>
  <g id="g202" stroke-width="2" stroke="#a5264c">
   <path id="path204" d="m-18.2,244.8s13.2-2.8,19.2,0.4c0,0,6,1.2,7.2,0.8s4.4-0.8,4.4-0.8"/>
  </g>
  <g id="g206" stroke-width="2" stroke="#a5264c">
   <path id="path208" d="m15.8,253.6s12-13.6,24-9.2c7.016,2.57,6-0.8,6.8-3.6s1-7,6-10"/>
  </g>
  <g id="g210" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path212" d="m33,237.6s-4-10.8-6.8,2-6,16.4-7.6,19.2c0,0,0,5.2,8.4,4.8,0,0,10.8-0.4,11.2-3.2s-1.2-14.4-5.2-22.8z"/>
  </g>
  <g id="g214" stroke-width="2" stroke="#a5264c">
   <path id="path216" d="m47,244.8s3.6-2.4,6-1.2"/>
  </g>
  <g id="g218" stroke-width="2" stroke="#a5264c">
   <path id="path220" d="m53.5,228.4s2.9-4.9,7.7-5.7"/>
  </g>
  <g id="g222" fill="#b2b2b2">
   <path id="path224" d="m-25.8,265.2s18,3.2,22.4,1.6l0.4,2-20.8-1.2s-11.6-5.6-2-2.4z"/>
  </g>
  <g id="g226" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path228" d="m-11.8,172,19.6,0.8s7.2,30.8,3.6,38.4c0,0-1.2,2.8-4-2.8,0,0-18.4-32.8-21.6-34.8s1.2-1.6,2.4-1.6z"/>
  </g>
  <g id="g230" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path232" d="m-88.9,169.3s8.9,1.7,21.5,4.3c0,0,4.8,22.4,8,27.2s-0.4,4.8-4,2-18.4-16.8-20.4-21.2-5.1-12.3-5.1-12.3z"/>
  </g>
  <g id="g234" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path236" d="m-67.039,173.82s5.8,1.55,6.809,3.76c1.008,2.22-1.202,5.51-1.202,5.51s-1,3.31-2.202,1.15c-1.202-2.17-4.074-9.83-3.405-10.42z"/>
  </g>
  <g id="g238" fill="#000">
   <path id="path240" d="m-67,173.6s3.6,5.2,7.2,5.2,3.982-0.41,6.8,0.2c4.6,1,4.2-1,10.8,0.2,2.64,0.48,5.2-0.4,8,0.8s6,0.4,7.2-1.6,6-6.2,6-6.2-12.8,1.8-15.6,2.6c0,0-22.4,1.2-30.4-1.2z"/>
  </g>
  <g id="g242" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path244" d="m-22.4,173.8s-6.45,3.5-6.85,5.9,5.25,6.1,5.25,6.1,2.75,4.6,3.35,2.2-0.95-13.8-1.75-14.2z"/>
  </g>
  <g id="g246" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path248" d="m-59.885,179.26s7.007,11.19,7.224-0.02c0,0,0.557-1.26-1.203-1.28-6.075-0.07-4.554-4.18-6.021,1.3z"/>
  </g>
  <g id="g250" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path252" d="m-52.707,179.51s7.921,11.19,7.285-0.09c0,0,0.007-0.33-1.746-0.48-4.747-0.42-4.402-4.94-5.539,0.57z"/>
  </g>
  <g id="g254" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path256" d="m-45.494,179.52s7.96,10.63,7.291,0.96c0,0,0.119-1.23-1.535-1.53-3.892-0.71-4.103-3.95-5.756,0.57z"/>
  </g>
  <g id="g258" stroke-width="0.5" stroke="#000" fill="#FFC">
   <path id="path260" d="m-38.618,179.6s7.9,11.56,8.248,1.78c0,0,1.644-1.38-0.102-1.6-5.818-0.74-5.02-5.19-8.146-0.18z"/>
  </g>
  <g id="g262" fill="#e5e5b2">
   <path id="path264" d="m-74.792,183.13-7.658-1.53c-2.6-5-4.7-11.15-4.7-11.15s6.35,1,18.85,3.8c0,0,0.876,3.32,2.348,9.11l-8.84-0.23z"/>
  </g>
  <g id="g266" fill="#e5e5b2">
   <path id="path268" d="m-9.724,178.47c-1.666-2.51-2.983-4.26-3.633-4.67-3.013-1.88,1.13-1.51,2.259-1.51l18.454,0.76s0.524,2.24,1.208,5.63c0,0-10.088-2.01-18.288-0.21z"/>
  </g>
  <g id="g270" fill="#cc7226">
   <path id="path272" d="m43.88,40.321c27.721,3.96,53.241-31.68,55.001-41.361,1.759-9.68-8.36-21.56-8.36-21.56,1.32-3.08-3.52-17.16-8.8-26.4s-21.181-8.266-38.721-9.24c-15.84-0.88-34.32,22.44-35.64,24.2s4.84,40.041,6.16,45.761-1.32,32.12-1.32,32.12c34.24-9.1,3.96-7.48,31.68-3.52z"/>
  </g>
  <g id="g274" fill="#ea8e51">
   <path id="path276" d="m8.088-33.392c-1.296,1.728,4.752,39.313,6.048,44.929s-1.296,31.536-1.296,31.536c32.672-8.88,3.888-7.344,31.104-3.456,27.217,3.888,52.273-31.104,54.001-40.609,1.728-9.504-8.208-21.168-8.208-21.168,1.296-3.024-3.456-16.848-8.64-25.92s-20.795-8.115-38.017-9.072c-15.552-0.864-33.696,22.032-34.992,23.76z"/>
  </g>
  <g id="g278" fill="#efaa7c">
   <path id="path280" d="m8.816-32.744c-1.272,1.696,4.664,38.585,5.936,44.097s-1.272,30.952-1.272,30.952c31.404-9.16,3.816-7.208,30.528-3.392,26.713,3.816,51.305-30.528,53.001-39.857,1.696-9.328-8.056-20.776-8.056-20.776,1.272-2.968-3.392-16.536-8.48-25.44s-20.41-7.965-37.313-8.904c-15.264-0.848-33.072,21.624-34.344,23.32z"/>
  </g>
  <g id="g282" fill="#f4c6a8">
   <path id="path284" d="m9.544-32.096c-1.248,1.664,4.576,37.857,5.824,43.265s-1.248,30.368-1.248,30.368c29.436-9.04,3.744-7.072,29.952-3.328,26.209,3.744,50.337-29.952,52.001-39.104,1.664-9.153-7.904-20.385-7.904-20.385,1.248-2.912-3.328-16.224-8.32-24.96s-20.025-7.815-36.609-8.736c-14.976-0.832-32.448,21.216-33.696,22.88z"/>
  </g>
  <g id="g286" fill="#f9e2d3">
   <path id="path288" d="m10.272-31.448c-1.224,1.632,4.488,37.129,5.712,42.433s-1.224,29.784-1.224,29.784c27.868-8.92,3.672-6.936,29.376-3.264,25.705,3.672,49.369-29.376,51.001-38.353,1.632-8.976-7.752-19.992-7.752-19.992,1.224-2.856-3.264-15.912-8.16-24.48s-19.64-7.665-35.905-8.568c-14.688-0.816-31.824,20.808-33.048,22.44z"/>
  </g>
  <g id="g290" fill="#FFF">
   <path id="path292" d="M44.2,36.8c25.2,3.6,48.401-28.8,50.001-37.6s-7.6-19.6-7.6-19.6c1.2-2.8-3.201-15.6-8.001-24s-19.254-7.514-35.2-8.4c-14.4-0.8-31.2,20.4-32.4,22s4.4,36.4,5.6,41.6-1.2,29.2-1.2,29.2c25.5-8.6,3.6-6.8,28.8-3.2z"/>
  </g>
  <g id="g294" fill="#CCC">
   <path id="path296" d="m90.601,2.8s-27.801,7.6-39.401,6c0,0-15.8-6.6-24.6,15.2,0,0-3.6,7.2-5.6,9.2s69.601-30.4,69.601-30.4z"/>
  </g>
  <g id="g298" fill="#000">
   <path id="path300" d="m94.401,0.6s-29.001,12.2-39.001,11.8c0,0-16.4-4.6-24.8,10,0,0-8.4,9.2-11.6,10.8,0,0-0.4,1.6,6-2.4l10.4,5.2s14.8,9.6,24.4-6.4c0,0,4-11.2,4-13.2s21.2-7.6,22.801-8c1.6-0.4,8.2-4.6,7.8-7.8z"/>
  </g>
  <g id="g302" fill="#99cc32">
   <path id="path304" d="m47,36.514c-6.872,0-15.245-3.865-15.245-10.114,0-6.248,8.373-12.513,15.245-12.513,6.874,0,12.446,5.065,12.446,11.313,0,6.249-5.572,11.314-12.446,11.314z"/>
  </g>
  <g id="g306" fill="#659900">
   <path id="path308" d="m43.377,19.83c-4.846,0.722-9.935,2.225-9.863,2.009,1.54-4.619,7.901-7.952,13.486-7.952,4.296,0,8.084,1.978,10.32,4.988,0,0-5.316-0.33-13.943,0.955z"/>
  </g>
  <g id="g310" fill="#FFF">
   <path id="path312" d="m55.4,19.6s-4.4-3.2-4.4-1c0,0,3.6,4.4,4.4,1z"/>
  </g>
  <g id="g314" fill="#000">
   <path id="path316" d="m45.4,27.726c-2.499,0-4.525-2.026-4.525-4.526,0-2.499,2.026-4.525,4.525-4.525,2.5,0,4.526,2.026,4.526,4.525,0,2.5-2.026,4.526-4.526,4.526z"/>
  </g>
  <g id="g318" fill="#cc7226">
   <path id="path320" d="m-58.6,14.4s-3.2-21.2-0.8-25.6c0,0,10.8-10,10.4-13.6,0,0-0.4-18-1.6-18.8s-8.8-6.8-14.8-0.4c0,0-10.4,18-9.6,24.4v2s-7.6-0.4-9.2,1.6c0,0-1.2,5.2-2.4,5.6,0,0-2.8,2.4-0.8,5.2,0,0-2,2.4-1.6,6.4l7.6,4s2,14.4,12.8,19.6c4.836,2.329,8-4.4,10-10.4z"/>
  </g>
  <g id="g322" fill="#FFF">
   <path id="path324" d="m-59.6,12.56s-2.88-19.08-0.72-23.04c0,0,9.72-9,9.36-12.24,0,0-0.36-16.2-1.44-16.92s-7.92-6.12-13.32-0.36c0,0-9.36,16.2-8.64,21.96v1.8s-6.84-0.36-8.28,1.44c0,0-1.08,4.68-2.16,5.04,0,0-2.52,2.16-0.72,4.68,0,0-1.8,2.16-1.44,5.76l6.84,3.6s1.8,12.96,11.52,17.64c4.352,2.095,7.2-3.96,9-9.36z"/>
  </g>
  <g id="g326" fill="#eb955c">
   <path id="path328" d="m-51.05-42.61c-1.09-0.86-8.58-6.63-14.43-0.39,0,0-10.14,17.55-9.36,23.79v1.95s-7.41-0.39-8.97,1.56c0,0-1.17,5.07-2.34,5.46,0,0-2.73,2.34-0.78,5.07,0,0-1.95,2.34-1.56,6.24l7.41,3.9s1.95,14.04,12.48,19.11c4.714,2.27,7.8-4.29,9.75-10.14,0,0-3.12-20.67-0.78-24.96,0,0,10.53-9.75,10.14-13.26,0,0-0.39-17.55-1.56-18.33z"/>
  </g>
  <g id="g330" fill="#f2b892">
   <path id="path332" d="m-51.5-41.62c-0.98-0.92-8.36-6.46-14.06-0.38,0,0-9.88,17.1-9.12,23.18v1.9s-7.22-0.38-8.74,1.52c0,0-1.14,4.94-2.28,5.32,0,0-2.66,2.28-0.76,4.94,0,0-1.9,2.28-1.52,6.08l7.22,3.8s1.9,13.68,12.16,18.62c4.594,2.212,7.6-4.18,9.5-9.88,0,0-3.04-20.14-0.76-24.32,0,0,10.26-9.5,9.88-12.92,0,0-0.38-17.1-1.52-17.86z"/>
  </g>
  <g id="g334" fill="#f8dcc8">
   <path id="path336" d="m-51.95-40.63c-0.87-0.98-8.14-6.29-13.69-0.37,0,0-9.62,16.65-8.88,22.57v1.85s-7.03-0.37-8.51,1.48c0,0-1.11,4.81-2.22,5.18,0,0-2.59,2.22-0.74,4.81,0,0-1.85,2.22-1.48,5.92l7.03,3.7s1.85,13.32,11.84,18.13c4.473,2.154,7.4-4.07,9.25-9.62,0,0-2.96-19.61-0.74-23.68,0,0,9.99-9.25,9.62-12.58,0,0-0.37-16.65-1.48-17.39z"/>
  </g>
  <g id="g338" fill="#FFF">
   <path id="path340" d="m-59.6,12.46s-2.88-18.98-0.72-22.94c0,0,9.72-9,9.36-12.24,0,0-0.36-16.2-1.44-16.92-0.76-1.04-7.92-6.12-13.32-0.36,0,0-9.36,16.2-8.64,21.96v1.8s-6.84-0.36-8.28,1.44c0,0-1.08,4.68-2.16,5.04,0,0-2.52,2.16-0.72,4.68,0,0-1.8,2.16-1.44,5.76l6.84,3.6s1.8,12.96,11.52,17.64c4.352,2.095,7.2-4.06,9-9.46z"/>
  </g>
  <g id="g342" fill="#CCC">
   <path id="path344" d="m-62.7,6.2s-21.6-10.2-22.5-11c0,0,9.1,8.2,9.9,8.2s12.6,2.8,12.6,2.8z"/>
  </g>
  <g id="g346" fill="#000">
   <path id="path348" d="m-79.8,0s18.4,3.6,18.4,8c0,2.912-0.243,16.331-5.6,14.8-8.4-2.4-4.8-16.8-12.8-22.8z"/>
  </g>
  <g id="g350" fill="#99cc32">
   <path id="path352" d="m-71.4,3.8s8.978,1.474,10,4.2c0.6,1.6,1.263,9.908-4.2,11-4.552,0.911-6.782-9.31-5.8-15.2z"/>
  </g>
  <g id="g354" fill="#000">
   <path id="path356" d="m14.595,46.349c-0.497-1.742,0.814-1.611,2.605-2.149,2-0.6,14.2-4.4,15-7s14,1.8,14,1.8c1.8,0.8,6.2,3.4,6.2,3.4,4.8,1.2,11.4,1.6,11.4,1.6,2.4,1,5.8,3.8,5.8,3.8,14.6,10.2,27.001,3,27.001,3,19.999-6.6,13.999-23.8,13.999-23.8-3-9,0.2-12.4,0.2-12.4,0.2-3.8,7.4,2.6,7.4,2.6,2.6,4.2,3.4,9.2,3.4,9.2,8,11.2,4.6-6.6,4.6-6.6,0.2-1-2.6-4.6-2.6-5.8s-1.8-4.6-1.8-4.6c-3-3.4-0.6-10.4-0.6-10.4,1.8-13.8-0.4-12-0.4-12-1.2-1.8-10.4,8.2-10.4,8.2-2.2,3.4-8.2,5-8.2,5-2.799,1.8-6.199,0.4-6.199,0.4-2.6-0.4-8.2,6.6-8.2,6.6,2.8-0.2,5.2,4.2,7.6,4.4s4.2-2.4,5.799-3c1.6-0.6,4.4,5.2,4.4,5.2,0.4,2.6-5.2,7.4-5.2,7.4-0.4,4.6-1.999,3-1.999,3-3-0.6-4.2,3.2-5.2,7.8s-5.2,5-5.2,5c-1.6,7.4-2.801,4.4-2.801,4.4-0.2-5.6-6.2,0.2-6.2,0.2-1.2,2-5.8-0.2-5.8-0.2-6.8-2-4.4-4-4.4-4,1.8-2.2,13,0,13,0,2.2-1.6-5.8-5.6-5.8-5.6-0.6-1.8,0.4-6.2,0.4-6.2,1.2-3.2,8-8.8,8-8.8,9.401-1.2,6.601-2.8,6.601-2.8-6.2-5.2-12.001,2.4-12.001,2.4-2.2,6.2-19.6,21.2-19.6,21.2-4.8,3.4-2.2-3.4-6.2,0s-24.6-5.6-24.6-5.6c-11.562-1.193-14.294,14.549-17.823,11.429,0,0,5.418,8.52,3.818,2.92z"/>
  </g>
  <g id="g358" fill="#000">
   <path id="path360" d="m209.4-120s-25.6,8-28.4,26.8c0,0-2.4,22.8,18,40.4,0,0,0.4,6.4,2.4,9.6,0,0-1.6,4.8,17.2-2.8l27.2-8.4s6.4-2.4,11.6-11.2,20.4-27.6,16.8-52.8c0,0,1.2-11.2-4.8-11.6,0,0-8.4-1.6-15.6,6,0,0-6.8,3.2-9.2,2.8l-35.2,1.2z"/>
  </g>
  <g id="g362" fill="#000">
   <path id="path364" d="m264.02-120.99s2.1-8.93-2.74-4.09c0,0-7.04,5.72-14.52,5.72,0,0-14.52,2.2-18.92,15.4,0,0-3.96,26.84,3.96,32.56,0,0,4.84,7.48,11.88,0.88s22.54-36.83,20.34-50.47z"/>
  </g>
  <g id="g366" fill="#323232">
   <path id="path368" d="m263.65-120.63s2.09-8.75-2.66-3.99c0,0-6.92,5.61-14.26,5.61,0,0-14.26,2.16-18.58,15.12,0,0-3.89,26.354,3.89,31.97,0,0,4.75,7.344,11.66,0.864,6.92-6.48,22.11-36.184,19.95-49.574z"/>
  </g>
  <g id="g370" fill="#666">
   <path id="path372" d="m263.27-120.27s2.08-8.56-2.58-3.9c0,0-6.78,5.51-13.99,5.51,0,0-14,2.12-18.24,14.84,0,0-3.81,25.868,3.82,31.38,0,0,4.66,7.208,11.45,0.848,6.78-6.36,21.66-35.538,19.54-48.678z"/>
  </g>
  <g id="g374" fill="#999">
   <path id="path376" d="m262.9-119.92s2.07-8.37-2.51-3.79c0,0-6.65,5.41-13.73,5.41,0,0-13.72,2.08-17.88,14.56,0,0-3.75,25.372,3.74,30.78,0,0,4.58,7.072,11.23,0.832,6.66-6.24,21.23-34.892,19.15-47.792z"/>
  </g>
  <g id="g378" fill="#CCC">
   <path id="path380" d="m262.53-119.56s2.06-8.18-2.43-3.7c0,0-6.53,5.31-13.47,5.31,0,0-13.46,2.04-17.54,14.28,0,0-3.67,24.886,3.67,30.19,0,0,4.49,6.936,11.02,0.816,6.52-6.12,20.79-34.246,18.75-46.896z"/>
  </g>
  <g id="g382" fill="#FFF">
   <path id="path384" d="m262.15-119.2s2.05-8-2.35-3.6c0,0-6.4,5.2-13.2,5.2,0,0-13.2,2-17.2,14,0,0-3.6,24.4,3.6,29.6,0,0,4.4,6.8,10.8,0.8s20.35-33.6,18.35-46z"/>
  </g>
  <g id="g386" fill="#992600">
   <path id="path388" d="m50.6,84s-20.4-19.2-28.4-20c0,0-34.4-4-49.2,14,0,0,17.6-20.4,45.2-14.8,0,0-21.6-4.4-34-1.2l-26.4,14-2.8,4.8s4-14.8,22.4-20.8c0,0,22.8-4.8,33.6,0,0,0-21.6-6.8-31.6-4.8,0,0-30.4-2.4-43.2,24,0,0,4-14.4,18.8-21.6,0,0,13.6-8.8,34-6,0,0,14.4,3.2,19.6,5.6s4-0.4-4.4-5.2c0,0-5.6-10-19.6-9.6,0,0-42.8,3.6-53.2,15.6,0,0,13.6-11.2,24-14,0,0,22.4-8,30.8-7.2,0,0,24.8,1,32.4-3,0,0-11.2,5-8,8.2s10,10.8,10,12,24.2,23.3,27.8,27.7l2.2,2.3z"/>
  </g>
  <g id="g390" fill="#CCC">
   <path id="path392" d="m189,278s-15.5-36.5-28-46c0,0,26,16,29.5,34,0,0,0,10-1.5,12z"/>
  </g>
  <g id="g394" fill="#CCC">
   <path id="path396" d="m236,285.5s-26.5-55-45-79c0,0,43.5,37.5,48.5,64l0.5,5.5-3-2.5s-0.5,9-1,12z"/>
  </g>
  <g id="g398" fill="#CCC">
   <path id="path400" d="m292.5,237s-62.5-59.5-64-62c0,0,60.5,66,63.5,73.5,0,0-2-9,0.5-11.5z"/>
  </g>
  <g id="g402" fill="#CCC">
   <path id="path404" d="m104,280.5s19.5-52,38.5-29.5c0,0,15,10,14.5,13,0,0-4-6.5-22-6,0,0-19-3-31,22.5z"/>
  </g>
  <g id="g406" fill="#CCC">
   <path id="path408" d="m294.5,153s-45-28.5-52.5-30c-11.81-2.36,49.5,29,54.5,39.5,0,0,2-2.5-2-9.5z"/>
  </g>
  <g id="g410" fill="#000">
   <path id="path412" d="m143.8,259.6s20.4-2,27.2-8.8l4.4,3.6,17.6-38.4,3.6,5.2s14.4-14.8,13.6-22.8,12.8,6,12.8,6-0.8-11.6,6.4-4.8c0,0-2.4-15.6,6-7.6,0,0-10.54-30.16,12-4.4,5.6,6.4,1.2-0.4,1.2-0.4s-26-48-4.4-33.6c0,0,2-22.8,0.8-27.2s-3.2-26.8-8-32,0.4-6.8,6-1.6c0,0-11.2-24,2-12,0,0-3.6-15.2-8-18,0,0-5.6-17.2,9.6-6.4,0,0-4.4-12.4-7.6-15.6,0,0-11.6-27.6-4.4-22.8l4.4,3.6s-6.8-14-0.4-9.6,6.4,4,6.4,4-21.2-33.2-0.8-15.6c0,0-8.16-13.918-11.6-20.8,0,0-18.8-20.4-4.4-14l4.8,1.6s-8.8-10-16.8-11.6,2.4-8,8.8-6,22,9.6,22,9.6,12.8,18.8,16.8,19.2c0,0-20-7.6-14,0.4,0,0,14.4,14,7.2,13.6,0,0-6,7.2-1.2,16,0,0-18.46-18.391-3.6,7.2l6.8,16.4s-24.4-24.8-13.2-2.8c0,0,17.2,23.6,19.2,24s6.4,9.2,6.4,9.2l-4.4-2,5.2,8.8s-11.2-12-5.2,1.2l5.6,14.4s-20.4-22-6.8,7.6c0,0-16.4-5.2-7.6,12,0,0-1.6,16-1.2,21.2s1.6,33.6-2.8,41.6,6,27.2,8,31.2,5.6,14.8-3.2,5.6-4.4-3.6-2.4,5.2,8,24.4,7.2,30c0,0-1.2,1.2-4.4-2.4,0,0-14.8-22.8-13.2-8.4,0,0-1.2,8-4.4,16.8,0,0-3.2,10.8-3.2,2,0,0-3.2-16.8-6-9.2s-6.4,13.6-9.2,16-8-20.4-9.2-10c0,0-12-12.4-16.8,4l-11.6,16.4s-0.4-12.4-1.6-6.4c0,0-30,6-40.4,1.6z"/>
  </g>
  <g id="g414" fill="#000">
   <path id="path416" d="m109.4-97.2s-11.599-8-15.599-7.6,27.599-8.8,68.799,18.8c0,0,4.8,2.8,8.4,2.4,0,0,3.2,2.4,0.4,6,0,0-8.8,9.6,2.4,20.8,0,0,18.4,6.8,12.8-2,0,0,10.8,4,13.2,8s1.2,0,1.2,0l-12.4-12.4s-5.2-2-8-10.4-5.2-18.4-0.8-21.6c0,0-4,4.4-3.2,0.4s4.4-7.6,6-8,18-16.2,24.8-16.6c0,0-9.2,1.4-12.2,0.4s-29.6-12.4-35.6-13.6c0,0-16.8-6.6-4.8-4.6,0,0,35.8,3.8,54,17,0,0-7.2-8.4-25.6-15.4,0,0-22.2-12.6-57.4-7.6,0,0-17.8,3.2-25.6,5,0,0-2.599-0.6-3.199-1s-12.401-9.4-40.001-2.4c0,0-17,4.6-25.6,9.4,0,0-15.2,1.2-18.8,4.4,0,0-18.6,14.6-20.6,15.4s-13.4,8.4-14.2,8.8c0,0,24.6-6.6,27-9s19.8-5,22.2-3.6,10.8,0.8,1.2,1.4c0,0,75.6,14.8,76.4,16.8s4.8,0.8,4.8,0.8z"/>
  </g>
  <g id="g418" fill="#cc7226">
   <path id="path420" d="m180.8-106.4s-10.2-7.4-12.2-7.4-14.4-10.2-18.6-9.8-16.4-9.6-43.8-1.4c0,0-0.6-2,3-2.8,0,0,6.4-2.2,6.8-2.8,0,0,20.2-4.2,27.4-0.6,0,0,9.2,2.6,15.4,8.8,0,0,11.2,3.2,14.4,2.2,0,0,8.8,2.2,9.2,4,0,0,5.8,3,4,5.6,0,0,0.4,1.6-5.6,4.2z"/>
  </g>
  <g id="g422" fill="#cc7226">
   <path id="path424" d="m168.33-108.51c0.81,0.63,1.83,0.73,2.43,1.54,0.24,0.31-0.05,0.64-0.37,0.74-1.04,0.31-2.1-0.26-3.24,0.33-0.4,0.21-1.04,0.03-1.6-0.12-1.63-0.44-3.46-0.47-5.15,0.22-1.98-1.13-4.34-0.54-6.42-1.55-0.06-0.02-0.28,0.32-0.36,0.3-3.04-1.15-6.79-0.87-9.22-3.15-2.43-0.41-4.78-0.87-7.21-1.55-1.82-0.51-3.23-1.5-4.85-2.33-1.38-0.71-2.83-1.23-4.37-1.61-1.86-0.45-3.69-0.34-5.58-0.86-0.1-0.02-0.29,0.32-0.37,0.3-0.32-0.11-0.62-0.69-0.79-0.64-1.68,0.52-3.17-0.45-4.83-0.11-1.18-1.22-2.9-0.98-4.45-1.42-2.97-0.85-6.12,0.42-9.15-0.58,4.11-1.84,8.8-0.61,12.86-2.68,2.33-1.18,4.99-0.08,7.56-0.84,0.49-0.15,1.18-0.35,1.58,0.32,0.14-0.14,0.32-0.37,0.38-0.35,2.44,1.16,4.76,2.43,7.24,3.5,0.34,0.15,0.88-0.09,1.13,0.12,1.52,1.21,3.46,1.11,4.85,2.33,1.7-0.5,3.49-0.12,5.22-0.75,0.08-0.02,0.31,0.32,0.34,0.3,1.14-0.75,2.29-0.48,3.18-0.18,0.34,0.12,1,0.37,1.31,0.44,1.12,0.27,1.98,0.75,3.16,0.94,0.11,0.02,0.3-0.32,0.37-0.3,1.12,0.44,2.16,0.39,2.82,1.55,0.14-0.14,0.3-0.37,0.38-0.35,1.03,0.34,1.68,1.1,2.78,1.34,0.48,0.1,1.1,0.73,1.67,0.91,2.39,0.73,4.24,2.26,6.43,3.15,0.76,0.31,1.64,0.55,2.27,1.04z"/>
  </g>
  <g id="g426" fill="#cc7226">
   <path id="path428" d="m91.696-122.74c-2.518-1.72-4.886-2.83-7.328-4.62-0.181-0.13-0.541,0.04-0.743-0.08-1.007-0.61-1.895-1.19-2.877-1.89-0.539-0.38-1.36-0.37-1.868-0.63-2.544-1.29-5.173-1.85-7.68-3.04,0.682-0.64,1.804-0.39,2.4-1.2,0.195,0.28,0.433,0.56,0.786,0.37,1.678-0.9,3.528-1.05,5.204-0.96,1.704,0.09,3.424,0.39,5.199,0.67,0.307,0.04,0.506,0.56,0.829,0.66,2.228,0.66,4.617,0.14,6.736,0.98,1.591,0.63,3.161,1.45,4.4,2.72,0.252,0.26-0.073,0.57-0.353,0.76,0.388-0.11,0.661,0.1,0.772,0.41,0.084,0.24,0.084,0.54,0,0.78-0.112,0.31-0.391,0.41-0.765,0.46-1.407,0.19,0.365-1.19-0.335-0.74-1.273,0.82-0.527,2.22-1.272,3.49-0.28-0.19-0.51-0.41-0.4-0.8,0.234,0.52-0.368,0.81-0.536,1.13-0.385,0.72-1.284,2.14-2.169,1.53z"/>
  </g>
  <g id="g430" fill="#cc7226">
   <path id="path432" d="m59.198-115.39c-3.154-0.79-6.204-0.68-9.22-1.96-0.067-0.02-0.29,0.32-0.354,0.3-1.366-0.6-2.284-1.56-3.36-2.61-0.913-0.89-2.571-0.5-3.845-0.99-0.324-0.12-0.527-0.63-0.828-0.67-1.219-0.16-2.146-1.11-3.191-1.68,2.336-0.8,4.747-0.76,7.209-1.15,0.113-0.02,0.258,0.31,0.391,0.31,0.136,0,0.266-0.23,0.4-0.36,0.195,0.28,0.497,0.61,0.754,0.35,0.548-0.54,1.104-0.35,1.644-0.31,0.144,0.01,0.269,0.32,0.402,0.32,0.136,0,0.267-0.32,0.4-0.32,0.136,0,0.267,0.32,0.4,0.32,0.136,0,0.266-0.23,0.4-0.36,0.692,0.78,1.577,0.23,2.399,0.41,1.038,0.22,1.305,1.37,2.379,1.67,4.715,1.3,8.852,3.45,13.215,5.54,0.307,0.14,0.517,0.39,0.407,0.78,0.267,0,0.58-0.09,0.77,0.04,1.058,0.74,2.099,1.28,2.796,2.38,0.216,0.34-0.113,0.75-0.346,0.7-4.429-1-8.435-1.61-12.822-2.71z"/>
  </g>
  <g id="g434" fill="#cc7226">
   <path id="path436" d="m45.338-71.179c-1.592-1.219-2.176-3.25-3.304-5.042-0.214-0.34,0.06-0.654,0.377-0.743,0.56-0.159,1.103,0.319,1.512,0.521,1.745,0.862,3.28,2.104,5.277,2.243,1.99,2.234,6.25,2.619,6.257,6,0.001,0.859-1.427-0.059-1.857,0.8-2.451-1.003-4.84-0.9-7.22-2.367-0.617-0.381-0.287-0.834-1.042-1.412z"/>
  </g>
  <g id="g438" fill="#cc7226">
   <path id="path440" d="m17.8-123.76c0.135,0,7.166,0.24,7.149,0.35-0.045,0.31-7.775,1.36-8.139,1.19-0.164-0.08-7.676,2.35-7.81,2.22,0.268-0.14,8.534-3.76,8.8-3.76z"/>
  </g>
  <g id="g442" fill="#000">
   <path id="path444" d="m33.2-114s-14.8,1.8-19.2,3-23,8.8-26,10.8c0,0-13.4,5.4-30.4,25.4,0,0,7.6-3.4,9.8-6.2,0,0,13.6-12.6,13.4-10,0,0,12.2-8.6,11.6-6.4,0,0,24.4-11.2,22.4-8,0,0,21.6-4.6,20.6-2.6,0,0,18.8,4.4,16,4.6,0,0-5.8,1.2,0.6,4.8,0,0-3.4,4.4-8.8,0.4s-2.4-1.8-7.4-0.8c0,0-2.6,0.8-7.2-3.2,0,0-5.6-4.6-14.4-1,0,0-30.6,12.6-32.6,13.2,0,0-3.6,2.8-6,6.4,0,0-5.8,4.4-8.8,5.8,0,0-12.8,11.6-14,13,0,0-3.4,5.2-4.2,5.6,0,0,6.4-3.8,8.4-5.8,0,0,14-10,19.4-10.8,0,0,4.4-3,5.2-4.4,0,0,14.4-9.2,18.6-9.2,0,0,9.2,5.2,11.6-1.8,0,0,5.8-1.8,11.4-0.6,0,0,3.2-2.6,2.4-4.8,0,0,1.6-1.8,2.6,2,0,0,3.4,3.6,8.2,1.6,0,0,4-0.2,2,2.2,0,0-4.4,3.8-16.2,4,0,0-12.4,0.6-28.8,8.2,0,0-29.8,10.4-39,20.8,0,0-6.4,8.8-11.8,10,0,0-5.8,0.8-11.8,8.2,0,0,9.8-5.8,18.8-5.8,0,0,4-2.4,0.2,1.2,0,0-3.6,7.6-2,13,0,0-0.6,5.2-1.4,6.8,0,0-7.8,12.8-7.8,15.2s1.2,12.2,1.6,12.8-1-1.6,2.8,0.8,6.6,4,7.4,6.8-2-5.4-2.2-7.2-4.4-9-3.6-11.4c0,0,1,1,1.8,2.4,0,0-0.6-0.6,0-4.2,0,0,0.8-5.2,2.2-8.4s3.4-7,3.8-7.8,0.4-6.6,1.8-4l3.4,2.6s-2.8-2.6-0.6-4.8c0,0-1-5.6,0.8-8.2,0,0,7-8.4,8.6-9.4s0.2-0.6,0.2-0.6,6-4.2,0.2-2.6c0,0-4,1.6-7,1.6,0,0-7.6,2-3.6-2.2s14-9.6,17.8-9.4l0.8,1.6,11.2-2.4-1.2,0.8s-0.2-0.2,4-0.6,10,1,11.4-0.8,4.8-2.8,4.4-1.4-0.6,3.4-0.6,3.4,5-5.8,4.4-3.6-8.8,7.4-10.2,13.6l10.4-8.2,3.6-3s3.6,2.2,3.8,0.6,4.8-7.4,6-7.2,3.2-2.6,3,0,7.4,8,7.4,8,3.2-1.8,4.6-0.4,5.6-19.8,5.6-19.8l25-10.6,43.6-3.4-16.999-6.8-61.001-11.4z"/>
  </g>
  <g id="g446" stroke-width="2" stroke="#4c0000">
   <path id="path448" d="m51.4,85s-15-16.8-23.4-19.4c0,0-13.4-6.8-38,1"/>
  </g>
  <g id="g450" stroke-width="2" stroke="#4c0000">
   <path id="path452" d="m24.8,64.2s-25.2-8-40.6-3.8c0,0-18.4,2-26.8,15.8"/>
  </g>
  <g id="g454" stroke-width="2" stroke="#4c0000">
   <path id="path456" d="m21.2,63s-17-7.2-31.8-9.4c0,0-16.6-2.6-33.2,4.6,0,0-12.2,6-17.6,16.2"/>
  </g>
  <g id="g458" stroke-width="2" stroke="#4c0000">
   <path id="path460" d="m22.2,63.4s-15.4-11-16.4-12.4c0,0-7-11-20-11.4,0,0-21.4,0.8-38.6,8.8"/>
  </g>
  <g id="g462" fill="#000">
   <path id="path464" d="M20.895,54.407c1.542,1.463,28.505,30.393,28.505,30.393,35.2,36.6,7.2,2.4,7.2,2.4-7.6-4.8-16.8-23.6-16.8-23.6-1.2-2.8,14,7.2,14,7.2,4,0.8,17.6,20,17.6,20-6.8-2.4-2,4.8-2,4.8,2.8,2,23.201,17.6,23.201,17.6,3.6,4,7.599,5.6,7.599,5.6,14-5.2,7.6,8,7.6,8,2.4,6.8,8-4.8,8-4.8,11.2-16.8-5.2-14.4-5.2-14.4-30,2.8-36.8-13.2-36.8-13.2-2.4-2.4,6.4,0,6.4,0,8.401,2-7.2-12.4-7.2-12.4,2.4,0,11.6,6.8,11.6,6.8,10.401,9.2,12.401,7.2,12.401,7.2,17.999-8.8,28.399-1.2,28.399-1.2,2,1.6-3.6,8.4-2,13.6s6.4,17.6,6.4,17.6c-2.4,1.6-2,12.4-2,12.4,16.8,23.2,7.2,21.2,7.2,21.2-15.6-0.4-0.8,7.2-0.8,7.2,3.2,2,12,9.2,12,9.2-2.8-1.2-4.4,4-4.4,4,4.8,4,2,8.8,2,8.8-6,1.2-7.2,5.2-7.2,5.2,6.8,8-3.2,8.4-3.2,8.4,3.6,4.4-1.2,16.4-1.2,16.4-4.8,0-11.2,5.6-11.2,5.6,2.4,4.8-8,10.4-8,10.4-8.4,1.6-5.6,8.4-5.6,8.4-7.999,6-10.399,22-10.399,22-0.8,10.4-3.2,13.6,2,11.6,5.199-2,4.399-14.4,4.399-14.4-4.799-15.6,38-31.6,38-31.6,4-1.6,4.8-6.8,4.8-6.8,2,0.4,10.8,8,10.8,8,7.6,11.2,8,2,8,2,1.2-3.6-0.4-9.6-0.4-9.6,6-21.6-8-28-8-28-10-33.6,4-25.2,4-25.2,2.8,5.6,13.6,10.8,13.6,10.8l3.6-2.4c-1.6-4.8,6.8-10.8,6.8-10.8,2.8,6.4,8.8-1.6,8.8-1.6,3.6-24.4,16-10,16-10,4,1.2,5.2-5.6,5.2-5.6,3.6-10.4,0-24,0-24,3.6-0.4,13.2,5.6,13.2,5.6,2.8-3.6-6.4-20.4-2.4-18s8.4,4,8.4,4c0.8-2-9.2-14.4-9.2-14.4-4.4-2.8-9.6-23.2-9.6-23.2,7.2,3.6-2.8-11.6-2.8-11.6,0-3.2,6-14.4,6-14.4-0.8-6.8,0-6.4,0-6.4,2.8,1.2,10.8,2.8,4-3.6s0.8-11.2,0.8-11.2c4.4-2.8-9.2-2.4-9.2-2.4-5.2-4.4-4.8-8.4-4.8-8.4,8,2-6.4-12.4-8.8-16s7.2-8.8,7.2-8.8c13.2-3.6,1.6-6.8,1.6-6.8-19.6,0.4-8.8-10.4-8.8-10.4,6,0.4,4.4-2,4.4-2-5.2-1.2-14.8-7.6-14.8-7.6-4-3.6-0.4-2.8-0.4-2.8,16.8,1.2-12-10-12-10,8,0-10-10.4-10-10.4-2-1.6-5.2-9.2-5.2-9.2-6-5.2-10.8-12-10.8-12-0.4-4.4-5.2-9.2-5.2-9.2-11.6-13.6-17.2-13.2-17.2-13.2-14.8-3.6-20-2.8-20-2.8l-52.8,4.4c-26.4,12.8-18.6,33.8-18.6,33.8,6.4,8.4,15.6,4.6,15.6,4.6,4.6-6.2,16.2-4,16.2-4,20.401,3.2,17.801-0.4,17.801-0.4-2.4-4.6-18.601-10.8-18.801-11.4s-9-4-9-4c-3-1.2-7.4-10.4-7.4-10.4-3.2-3.4,12.6,2.4,12.6,2.4-1.2,1,6.2,5,6.2,5,17.401-1,28.001,9.8,28.001,9.8,10.799,16.6,10.999,8.4,10.999,8.4,2.8-9.4-9-30.6-9-30.6,0.4-2,8.6,4.6,8.6,4.6,1.4-2,2.2,3.8,2.2,3.8,0.2,2.4,4,10.4,4,10.4,2.8,13,6.4,5.6,6.4,5.6l4.6,9.4c1.4,2.6-4.6,10.2-4.6,10.2-0.2,2.8,0.6,2.6-5,10.2s-2.2,12-2.2,12c-1.4,6.6,7.4,6.2,7.4,6.2,2.6,2.2,6,2.2,6,2.2,1.8,2,4.2,1.4,4.2,1.4,1.6-3.8,7.8-1.8,7.8-1.8,1.4-2.4,9.6-2.8,9.6-2.8,1-2.6,1.4-4.2,4.8-4.8s-21.2-43.6-21.2-43.6c6.4-0.8-1.8-13.2-1.8-13.2-2.2-6.6,9.2,8,11.4,9.4s3.2,3.6,1.6,3.4-3.4,2-2,2.2,14.4,15.2,17.8,25.4,9.4,14.2,15.6,20.2,5.4,30.2,5.4,30.2c-0.4,8.8,5.6,19.4,5.6,19.4,2,3.8-2.2,22-2.2,22-2,2.2-0.6,3-0.6,3,1,1.2,7.8,14.4,7.8,14.4-1.8-0.2,1.8,3.4,1.8,3.4,5.2,6-1.2,3-1.2,3-6-1.6,1,8.2,1,8.2,1.2,1.8-7.8-2.8-7.8-2.8-9.2-0.6,2.4,6.6,2.4,6.6,8.6,7.2-2.8,2.8-2.8,2.8-4.6-1.8-1.4,5-1.4,5,3.2,1.6,20.4,8.6,20.4,8.6,0.4,3.8-2.6,8.8-2.6,8.8,0.4,4-1.8,7.4-1.8,7.4-1.2,8.2-1.8,9-1.8,9-4.2,0.2-11.6,14-11.6,14-1.8,2.6-12,14.6-12,14.6-2,7-20-0.2-20-0.2-6.6,3.4-4.6,0-4.6,0-0.4-2.2,4.4-8.2,4.4-8.2,7-2.6,4.4-13.4,4.4-13.4,4-1.4-7.2-4.2-7-5.4s6-2.6,6-2.6c8-2,3.6-4.4,3.6-4.4-0.6-4,2.4-9.6,2.4-9.6,11.6-0.8,0-17,0-17-10.8-7.6-11.8-13.4-11.8-13.4,12.6-8.2,4.4-20.6,4.6-24.2s1.4-25.2,1.4-25.2c-2-6.2-5-19.8-5-19.8,2.2-5.2,9.6-17.8,9.6-17.8,2.8-4.2,11.6-9,9.4-12s-10-1.2-10-1.2c-7.8-1.4-7.2,3.8-7.2,3.8-1.6,1-2.4,6-2.4,6-0.72,7.933-9.6,14.2-9.6,14.2-11.2,6.2-2,10.2-2,10.2,6,6.6-3.8,6.8-3.8,6.8-11-1.8-2.8,8.4-2.8,8.4,10.8,12.8,7.8,15.6,7.8,15.6-10.2,1,2.4,10.2,2.4,10.2s-0.8-2-0.6-0.2,3.2,6,4,8-3.2,2.2-3.2,2.2c0.6,9.6-14.8,5.4-14.8,5.4l-1.6,0.2c-1.6,0.2-12.8-0.6-18.6-2.8s-12.599-2.2-12.599-2.2-4,1.8-11.601,1.6c-7.6-0.2-15.6,2.6-15.6,2.6-4.4-0.4,4.2-4.8,4.4-4.6s5.8-5.4-2.2-4.8c-21.797,1.635-32.6-8.6-32.6-8.6-2-1.4-4.6-4.2-4.6-4.2-10-2,1.4,12.4,1.4,12.4,1.2,1.4-0.2,2.4-0.2,2.4-0.8-1.6-8.6-7-8.6-7-2.811-0.973-4.174-2.307-6.505-4.793z"/>
  </g>
  <g id="g466" fill="#4c0000">
   <path id="path468" d="m-3,42.8s11.6,5.6,14.2,8.4,16.6,14.2,16.6,14.2-5.4-2-8-3.8-13.4-10-13.4-10-3.8-6-9.4-8.8z"/>
  </g>
  <g id="g470" fill="#99cc32">
   <path id="path472" d="M-61.009,11.603c0.337-0.148-0.187-2.86-0.391-3.403-1.022-2.726-10-4.2-10-4.2-0.227,1.365-0.282,2.961-0.176,4.599,0,0,4.868,5.519,10.567,3.004z"/>
  </g>
  <g id="g474" fill="#659900">
   <path id="path476" d="M-61.009,11.403c-0.449,0.158-0.015-2.734-0.191-3.203-1.022-2.726-10.2-4.3-10.2-4.3-0.227,1.365-0.282,2.961-0.176,4.599,0,0,4.268,5.119,10.567,2.904z"/>
  </g>
  <g id="g478" fill="#000">
   <path id="path480" d="m-65.4,11.546c-0.625,0-1.131-1.14-1.131-2.546,0-1.405,0.506-2.545,1.131-2.545s1.132,1.14,1.132,2.545c0,1.406-0.507,2.546-1.132,2.546z"/>
  </g>
  <g id="g482" fill="#000">
   <path id="path484" d="M-65.4,9z"/>
  </g>
  <g id="g486" fill="#000">
   <path id="path488" d="m-111,109.6s-5.6,10,19.2,4c0,0,14-1.2,16.4-3.6,1.2,0.8,9.566,3.73,12.4,4.4,6.8,1.6,15.2-8.4,15.2-8.4s4.6-10.5,7.4-10.5-0.4,1.6-0.4,1.6-6.6,10.1-6.2,11.7c0,0-5.2,20-21.2,20.8,0,0-16.15,0.95-14.8,6.8,0,0,8.8-2.4,11.2,0,0,0,10.8-0.4,2.8,6l-6.8,11.6s0.14,3.92-10,0.4c-9.8-3.4-20.1-16.3-20.1-16.3s-15.95-14.55-5.1-28.5z"/>
  </g>
  <g id="g490" fill="#e59999">
   <path id="path492" d="m-112.2,113.6s-2,9.6,34.8-0.8l6.8,0.8c2.4,0.8,14.4,3.6,16.4,2.4,0,0-7.2,13.6-18.8,12,0,0-13.2,1.6-12.8,6.4,0,0,4,7.2,8.8,9.6,0,0,2.8,2.4,2.4,5.6s-3.2,4.8-5.2,5.6-5.2-2.4-6.8-2.4-10-6.4-14.4-11.2-12.8-16.8-12.4-19.6,1.2-8.4,1.2-8.4z"/>
  </g>
  <g id="g494" fill="#b26565">
   <path id="path496" d="m-109,131.05c2.6,3.95,5.8,8.15,8,10.55,4.4,4.8,12.8,11.2,14.4,11.2s4.8,3.2,6.8,2.4,4.8-2.4,5.2-5.6-2.4-5.6-2.4-5.6c-3.066-1.53-5.806-5.02-7.385-7.35,0,0,0.185,2.55-5.015,1.75s-10.4-3.6-12-6.8-4-5.6-2.4-2,4,7.2,5.6,7.6,1.2,1.6-1.2,1.2-5.2-0.8-9.6-6z"/>
  </g>
  <g id="g498" fill="#992600">
   <path id="path500" d="m-111.6,110s1.8-13.6,3-17.6c0,0-0.8-6.8,1.6-11s4.4-10.4,7.4-15.8,3.2-9.4,7.2-11,10-10.2,12.8-11.2,2.6-0.2,2.6-0.2,6.8-14.8,20.4-10.8c0,0-16.2-2.8-0.4-12.2,0,0-4.8,1.1-1.5-5.9,2.201-4.668,1.7,2.1-9.3,13.9,0,0-5,8.6-10.2,11.6s-17.2,10-18.4,13.8-4.4,9.6-6.4,11.2-4.8,5.8-5.2,9.2c0,0-1.2,4-2.6,5.2s-1.6,4.4-1.6,6.4-2,4.8-1.8,7.2c0,0,0.8,19,0.4,21l2-3.8z"/>
  </g>
  <g id="g502" fill="#FFF">
   <path id="path504" d="m-120.2,114.6s-2-1.4-6.4,4.6c0,0,7.3,33,7.3,34.4,0,0,1.1-2.1-0.2-9.3s-2.2-19.9-2.2-19.9l1.5-9.8z"/>
  </g>
  <g id="g506" fill="#992600">
   <path id="path508" d="m-98.6,54s-17.6,3.2-17.2,32.4l-0.8,24.8s-1.2-25.6-2.4-27.2,2.8-12.8-0.4-6.8c0,0-14,14-6,35.2,0,0,1.5,3.3-1.5-1.3,0,0-4.6-12.6-3.5-19,0,0,0.2-2.2,2.1-5,0,0,8.6-11.7,11.3-14,0,0,1.8-14.4,17.2-19.6,0,0,5.7-2.3,1.2,0.5z"/>
  </g>
  <g id="g510" fill="#000">
   <path id="path512" d="m40.8-12.2c0.66-0.354,0.651-1.324,1.231-1.497,1.149-0.344,1.313-1.411,1.831-2.195,0.873-1.319,1.066-2.852,1.648-4.343,0.272-0.7,0.299-1.655-0.014-2.315-1.174-2.481-1.876-4.93-3.318-7.356-0.268-0.45-0.53-1.244-0.731-1.842-0.463-1.384-1.72-2.375-2.58-3.695-0.288-0.441,0.237-1.366-0.479-1.45-0.897-0.105-2.346-0.685-2.579,0.341-0.588,2.587,0.423,5.11,1.391,7.552-0.782,0.692-0.448,1.613-0.296,2.38,0.71,3.606-0.488,6.958-1.249,10.432-0.023,0.104,0.319,0.302,0.291,0.364-1.222,2.686-2.674,5.131-4.493,7.512-0.758,0.992-1.63,1.908-2.127,2.971-0.368,0.787-0.776,1.753-0.526,2.741-3.435,2.78-5.685,6.625-8.296,10.471-0.462,0.68-0.171,1.889,0.38,2.158,0.813,0.398,1.769-0.626,2.239-1.472,0.389-0.698,0.742-1.348,1.233-1.991,0.133-0.175-0.046-0.594,0.089-0.715,2.633-2.347,4.302-5.283,6.755-7.651,1.95-0.329,3.487-1.327,5.235-2.34,0.308-0.179,0.832,0.07,1.122-0.125,1.753-1.177,1.751-3.213,1.857-5.123,0.05-0.884,0.246-2.201,1.386-2.812z"/>
  </g>
  <g id="g514" fill="#000">
   <path id="path516" d="m31.959-16.666c0.124-0.077-0.031-0.5,0.078-0.716,0.162-0.324,0.565-0.512,0.727-0.836,0.109-0.216-0.054-0.596,0.082-0.738,2.333-2.447,2.59-5.471,1.554-8.444,1.024-0.62,1.085-1.882,0.66-2.729-0.853-1.7-1.046-3.626-2.021-5.169-0.802-1.269-2.38-2.513-3.751-1.21-0.421,0.4-0.742,1.187-0.464,1.899,0.064,0.163,0.349,0.309,0.322,0.391-0.107,0.324-0.653,0.548-0.659,0.82-0.03,1.496-0.984,3.007-0.354,4.336,0.772,1.629,1.591,3.486,2.267,5.262-1.234,2.116-0.201,4.565-1.954,6.442-0.136,0.146-0.127,0.532-0.005,0.734,0.292,0.486,0.698,0.892,1.184,1.184,0.202,0.121,0.55,0.123,0.75-0.001,0.578-0.362,0.976-0.849,1.584-1.225z"/>
  </g>
  <g id="g518" fill="#000">
   <path id="path520" d="m94.771-26.977c1.389,1.792,1.679,4.587-0.37,5.977,0.55,3.309,3.901,1.33,5.999,0.8-0.11-0.388,0.12-0.732,0.4-0.737,1.06-0.015,1.74-1.047,2.8-0.863,0.44-1.557,2.07-2.259,2.72-3.639,1.72-3.695,1.13-7.968-1.45-11.214-0.2-0.254,0.01-0.771-0.11-1.133-0.76-2.211-2.82-2.526-4.76-3.214-1.176-3.875-1.837-7.906-3.599-11.6-1.614-0.25-2.312-1.989-3.649-2.709-1.333-0.719-1.901,0.86-1.86,1.906,0.007,0.205,0.459,0.429,0.289,0.794-0.076,0.164-0.336,0.275-0.336,0.409,0.001,0.135,0.222,0.266,0.356,0.4-0.918,0.82-2.341,1.297-2.636,2.442-0.954,3.71,1.619,6.835,3.287,10.036,0.591,1.135-0.145,2.406-0.905,3.614-0.438,0.695-0.33,1.822-0.054,2.678,0.752,2.331,2.343,4.07,3.878,6.053z"/>
  </g>
  <g id="g522" fill="#000">
   <path id="path524" d="m57.611-8.591c-1.487,1.851-4.899,4.42-1.982,6.348,0.194,0.129,0.564,0.133,0.737-0.001,2.021-1.565,4.024-2.468,6.46-3.05,0.124-0.029,0.398,0.438,0.767,0.277,1.613-0.703,3.623-0.645,4.807-1.983,3.767,0.224,7.332-0.892,10.723-2.2,1.161-0.448,2.431-1.007,3.632-1.509,1.376-0.576,2.58-1.504,3.692-2.645,0.133-0.136,0.487-0.046,0.754-0.046-0.04-0.863,0.922-0.99,1.169-1.612,0.092-0.232-0.058-0.628,0.075-0.73,2.138-1.63,3.058-3.648,1.889-6.025-0.285-0.578-0.534-1.196-1.1-1.672-1.085-0.911-2.187-0.057-3.234-0.361-0.159,0.628-0.888,0.456-1.274,0.654-0.859,0.439-2.192-0.146-3.051,0.292-1.362,0.695-2.603,0.864-4.025,1.241-0.312,0.082-1.09-0.014-1.25,0.613-0.134-0.134-0.282-0.368-0.388-0.346-1.908,0.396-3.168,0.61-4.469,2.302-0.103,0.133-0.545-0.046-0.704,0.089-0.957,0.808-1.362,2.042-2.463,2.714-0.201,0.123-0.553-0.045-0.747,0.084-0.646,0.431-1.013,1.072-1.655,1.519-0.329,0.229-0.729-0.096-0.697-0.352,0.245-1.947,0.898-3.734,0.323-5.61,2.077-2.52,4.594-4.469,6.4-7.2,0.015-2.166,0.707-4.312,0.594-6.389-0.01-0.193-0.298-0.926-0.424-1.273-0.312-0.854,0.594-1.92-0.25-2.644-1.404-1.203-2.696-0.327-3.52,1.106-1.838,0.39-3.904,1.083-5.482-0.151-1.007-0.787-1.585-1.693-2.384-2.749-0.985-1.302-0.65-2.738-0.58-4.302,0.006-0.128-0.309-0.264-0.309-0.398,0.001-0.135,0.221-0.266,0.355-0.4-0.706-0.626-0.981-1.684-2-2,0.305-1.092-0.371-1.976-1.242-2.278-1.995-0.691-3.672,1.221-5.564,1.294-0.514,0.019-0.981-1.019-1.63-1.344-0.432-0.216-1.136-0.249-1.498,0.017-0.688,0.504-1.277,0.618-2.035,0.823-1.617,0.436-2.895,1.53-4.375,2.385-1.485,0.857-2.44,2.294-3.52,3.614-0.941,1.152-1.077,3.566,0.343,4.066,1.843,0.65,3.147-2.053,5.113-1.727,0.312,0.051,0.518,0.362,0.408,0.75,0.389,0.109,0.607-0.12,0.8-0.4,0.858,1.019,2.022,1.356,2.96,2.229,0.97,0.904,2.716,0.486,3.731,1.483,1.529,1.502,0.97,4.183,2.909,5.488-0.586,1.313-1.193,2.59-1.528,4.017-0.282,1.206,0.712,2.403,1.923,2.312,1.258-0.094,1.52-0.853,2.005-1.929,0.267,0.267,0.736,0.564,0.695,0.78-0.457,2.387-1.484,4.38-1.942,6.811-0.059,0.317-0.364,0.519-0.753,0.409-0.468,4.149-4.52,6.543-7.065,9.708-0.403,0.502-0.407,1.751,0.002,2.154,1.403,1.387,3.363-0.159,5.063-0.662,0.213-1.206,1.072-2.148,2.404-2.092,0.256,0.01,0.491-0.532,0.815-0.662,0.348-0.138,0.85,0.086,1.136-0.112,1.729-1.195,3.137-2.301,4.875-3.49,0.192-0.131,0.536,0.028,0.752-0.08,0.325-0.162,0.512-0.549,0.835-0.734,0.348-0.2,0.59,0.09,0.783,0.37-0.646,0.349-0.65,1.306-1.232,1.508-0.775,0.268-1.336,0.781-2.01,1.228-0.292,0.193-0.951-0.055-1.055,0.124-0.598,1.028-1.782,1.466-2.492,2.349z"/>
  </g>
  <g id="g526" fill="#000">
   <path id="path528" d="m2.2-58s-9.238-2.872-20.4,22.8c0,0-2.4,5.2-4.8,7.2s-13.6,5.6-15.6,9.6l-10.4,16s14.8-16,18-18.4c0,0,8-8.4,4.8-1.6,0,0-14,10.8-12.8,20,0,0-5.6,14.4-6.4,16.4,0,0,16-32,18.4-33.2s3.6-1.2,2.4,2.4-1.6,20-4.4,22c0,0,8-20.4,7.2-23.6,0,0,3.2-3.6,5.6,1.6l-1.2,16,4.4,12s-2.4-11.2-0.8-26.8c0,0-2-10.4,2-4.8s13.6,11.6,13.6,16.4c0,0-5.2-17.6-14.4-22.4l-4,6-1.2-2s-3.6-0.8,0.8-7.6,4-7.6,4-7.6,6.4,7.2,8,7.2c0,0,13.2-7.6,14.4,16.8,0,0,6.8-14.4-2.4-21.2,0,0-14.8-2-13.6-7.2l7.2-12.4c3.6-5.2,2-2.4,2-2.4z"/>
  </g>
  <g id="g530" fill="#000">
   <path id="path532" d="m-17.8-41.6-16,5.2-7.2,9.6s17.2-10,21.2-11.2,2-3.6,2-3.6z"/>
  </g>
  <g id="g534" fill="#000">
   <path id="path536" d="m-57.8-35.2s-2,1.2-2.4,4-2.8,3.2-2,6,2.8,5.2,2.8,1.2,1.6-6,2.4-7.2,2.4-5.6-0.8-4z"/>
  </g>
  <g id="g538" fill="#000">
   <path id="path540" d="m-66.6,26s-8.4-4-11.6-7.6-2.748,1.566-7.6,1.2c-5.847-0.441-4.8-16.4-4.8-16.4l-4,7.6s-1.2,14.4,6.8,12c3.907-1.172,5.2,0.4,3.6,1.2s5.6,1.2,2.8,2.8,11.6-3.6,9.2,6.8l5.6-7.6z"/>
  </g>
  <g id="g542" fill="#000">
   <path id="path544" d="m-79.2,40.4s-15.4,4.4-19-5.2c0,0-4.8,2.4-2.6,5.4s3.4,3.4,3.4,3.4,5.4,1.2,4.8,2-3,4.2-3,4.2,10.2-6,16.4-9.8z"/>
  </g>
  <g id="g546" fill="#FFF">
   <path id="path548" d="m149.2,118.6c-0.43,2.14-2.1,2.94-4,3.6-1.92-0.96-4.51-4.06-6.4-2-0.47-0.48-1.25-0.54-1.6-1.2-0.46-0.9-0.19-1.94-0.53-2.74-0.55-1.28-1.25-2.64-1.07-4.06,1.81-0.71,2.4-2.62,1.93-4.38-0.07-0.26-0.5-0.45-0.3-0.8,0.19-0.33,0.5-0.55,0.77-0.82-0.13,0.14-0.28,0.37-0.39,0.35-0.61-0.11-0.49-0.75-0.36-1.13,0.59-1.75,2.6-2.01,3.95-0.82,0.26-0.56,0.77-0.37,1.2-0.4-0.05-0.58,0.36-1.11,0.56-1.53,0.52-1.09,2.14,0.01,2.94-0.6,1.08-0.83,2.14-1.52,3.22-0.92,1.81,1.01,3.52,2.22,4.72,3.97,0.57,0.83,0.81,2.11,0.75,3.07-0.04,0.65-1.42,0.29-1.76,1.22-0.65,1.75,1.19,2.27,1.94,3.61,0.2,0.35-0.06,0.65-0.38,0.75-0.41,0.13-1.19-0.06-1.06,0.39,0.98,3.19-1.78,3.87-4.13,4.44z"/>
  </g>
  <g id="g550" fill="#FFF">
   <path id="path552" d="m139.6,138.2c-0.01-1.74-1.61-3.49-0.4-5.2,0.14,0.14,0.27,0.36,0.4,0.36,0.14,0,0.27-0.22,0.4-0.36,1.5,2.22,5.15,3.14,5.01,5.99-0.03,0.45-1.11,1.37-0.21,2.01-1.81,1.35-1.87,3.72-2.8,5.6-1.24-0.28-2.45-0.65-3.6-1.2,0.35-1.48,0.24-3.17,1.06-4.49,0.43-0.7,0.14-1.78,0.14-2.71z"/>
  </g>
  <g id="g554" fill="#CCC">
   <path id="path556" d="m-26.6,129.2s-16.858,10.14-2.8-5.2c8.8-9.6,18.8-15.2,18.8-15.2s10.4-4.4,14-5.6,18.8-6.4,22-6.8,12.8-4.4,19.6-0.4,14.8,8.4,14.8,8.4-16.4-8.4-20-6-10.8,2-16.8,5.2c0,0-14.8,4.4-18,6.4s-13.6,13.6-15.2,12.8,0.4-1.2,1.6-4-0.8-4.4-8.8,2-9.2,8.4-9.2,8.4z"/>
  </g>
  <g id="g558" fill="#000">
   <path id="path560" d="m-19.195,123.23s1.41-13.04,9.888-11.37c0,0,8.226-4.17,10.948-6.14,0,0,8.139-1.7,9.449-2.32,18.479-8.698,33.198-4.179,33.745-5.299,0.546-1.119,20.171,5.999,23.78,10.079,0.391,0.45-10.231-5.59-19.929-7.48-8.273-1.617-29.875,0.24-40.781,5.78-2.973,1.51-11.918,7.29-14.449,7.18s-12.651,9.57-12.651,9.57z"/>
  </g>
  <g id="g562" fill="#CCC">
   <path id="path564" d="m-23,148.8s-15.2-2.4,1.6-4c0,0,18-2,22-7.2,0,0,13.6-9.2,16.4-9.6s32.8-7.6,33.2-10,6-2.4,7.6-1.6,0.8,2-2,2.8-34,17.2-40.4,18.4-18,8.8-22.8,10-15.6,1.2-15.6,1.2z"/>
  </g>
  <g id="g566" fill="#000">
   <path id="path568" d="m-3.48,141.4s-8.582-0.83,0.019-1.64c0,0,8.816-3.43,10.864-6.09,0,0,6.964-4.71,8.397-4.92,1.434-0.2,15.394-3.89,15.599-5.12s34.271-13.81,38.691-10.62c2.911,2.1-6.99,0.43-16.624,4.84-1.355,0.62-35.208,15.2-38.485,15.82-3.277,0.61-9.216,4.5-11.674,5.12-2.457,0.61-6.787,2.61-6.787,2.61z"/>
  </g>
  <g id="g570" fill="#000">
   <path id="path572" d="m-11.4,143.6s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g574" fill="#000">
   <path id="path576" d="m-18.6,145.2s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g578" fill="#000">
   <path id="path580" d="m-29,146.8s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g582" fill="#000">
   <path id="path584" d="m-36.6,147.6s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g586" fill="#000">
   <path id="path588" d="m1.8,108,3.2,1.6c-1.2,1.6-4.4,1.2-4.4,1.2l1.2-2.8z"/>
  </g>
  <g id="g590" fill="#000">
   <path id="path592" d="m-8.2,113.6s6.506-2.14,4,1.2c-1.2,1.6-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g594" fill="#000">
   <path id="path596" d="m-19.4,118.4s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g598" fill="#000">
   <path id="path600" d="m-27,124.4s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g602" fill="#000">
   <path id="path604" d="m-33.8,129.2s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g606" fill="#000">
   <path id="path608" d="m5.282,135.6s6.921-0.53,5.324,1.6c-1.597,2.12-4.792,1.06-4.792,1.06l-0.532-2.66z"/>
  </g>
  <g id="g610" fill="#000">
   <path id="path612" d="m15.682,130.8s6.921-0.53,5.324,1.6c-1.597,2.12-4.792,1.06-4.792,1.06l-0.532-2.66z"/>
  </g>
  <g id="g614" fill="#000">
   <path id="path616" d="m26.482,126.4s6.921-0.53,5.324,1.6c-1.597,2.12-4.792,1.06-4.792,1.06l-0.532-2.66z"/>
  </g>
  <g id="g618" fill="#000">
   <path id="path620" d="m36.882,121.6s6.921-0.53,5.324,1.6c-1.597,2.12-4.792,1.06-4.792,1.06l-0.532-2.66z"/>
  </g>
  <g id="g622" fill="#000">
   <path id="path624" d="m9.282,103.6s6.921-0.53,5.324,1.6c-1.597,2.12-5.592,1.86-5.592,1.86l0.268-3.46z"/>
  </g>
  <g id="g626" fill="#000">
   <path id="path628" d="m19.282,100.4s6.921-0.534,5.324,1.6c-1.597,2.12-5.992,1.86-5.992,1.86l0.668-3.46z"/>
  </g>
  <g id="g630" fill="#000">
   <path id="path632" d="m-3.4,140.4s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g634" fill="#992600">
   <path id="path636" d="m-76.6,41.2s-4.4,8.8-4.8,12c0,0,0.8-8.8,2-10.8s2.8-1.2,2.8-1.2z"/>
  </g>
  <g id="g638" fill="#992600">
   <path id="path640" d="m-95,55.2s-3.2,14.4-2.8,17.2c0,0-1.2-11.6-0.8-12.8s3.6-4.4,3.6-4.4z"/>
  </g>
  <g id="g642" fill="#CCC">
   <path id="path644" d="m-74.2-19.4-0.2,3.2-2.2,0.2s14.2,12.6,14.8,20.2c0,0,0.8-8.2-12.4-23.6z"/>
  </g>
  <g id="g646" fill="#000">
   <path id="path648" d="m-70.216-18.135c-0.431-0.416-0.212-1.161-0.62-1.421-0.809-0.516,1.298-0.573,1.07-1.289-0.383-1.206-0.196-1.227-0.318-2.503-0.057-0.598,0.531-2.138,0.916-2.578,1.446-1.652,0.122-4.584,1.762-6.135,0.304-0.289,0.68-0.841,0.965-1.259,0.659-0.963,1.843-1.451,2.793-2.279,0.318-0.276,0.117-1.103,0.686-1.011,0.714,0.115,1.955-0.015,1.91,0.826-0.113,2.12-1.442,3.84-2.722,5.508,0.451,0.704-0.007,1.339-0.291,1.896-1.335,2.62-1.146,5.461-1.32,8.301-0.005,0.085-0.312,0.163-0.304,0.216,0.353,2.335,0.937,4.534,1.816,6.763,0.366,0.93,0.837,1.825,0.987,2.752,0.111,0.686,0.214,1.519-0.194,2.224,2.035,2.89,0.726,5.541,1.895,9.072,0.207,0.625,1.899,2.539,1.436,2.378-2.513-0.871-2.625-1.269-2.802-2.022-0.146-0.623-0.476-2-0.713-2.602-0.064-0.164-0.235-2.048-0.313-2.17-1.513-2.382-0.155-2.206-1.525-4.564-1.428-0.68-2.394-1.784-3.517-2.946-0.198-0.204,0.945-0.928,0.764-1.141-1.092-1.289-2.245-2.056-1.909-3.549,0.155-0.69,0.292-1.747-0.452-2.467z"/>
  </g>
  <g id="g650" fill="#000">
   <path id="path652" d="m-73.8-16.4s0.4,6.8,2.8,8.4,1.2,0.8-2-0.4-2-2-2-2-2.8,0.4-0.4,2.4,6,4.4,4.4,4.4-9.2-4-9.2-6.8-1-6.9-1-6.9,1.1-0.8,5.9-0.7c0,0,1.4,0.7,1.5,1.6z"/>
  </g>
  <g id="g654" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path656" d="m-74.6,2.2s-8.52-2.791-27,0.6c0,0,9.031-2.078,27.8,0.2,10.3,1.25-0.8-0.8-0.8-0.8z"/>
  </g>
  <g id="g658" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path660" d="m-72.502,2.129s-8.246-3.518-26.951-1.737c0,0,9.178-1.289,27.679,2.603,10.154,2.136-0.728-0.866-0.728-0.866z"/>
  </g>
  <g id="g662" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path664" d="m-70.714,2.222s-7.962-4.121-26.747-3.736c0,0,9.248-0.604,27.409,4.654,9.966,2.885-0.662-0.918-0.662-0.918z"/>
  </g>
  <g id="g666" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path668" d="m-69.444,2.445s-6.824-4.307-23.698-5.405c0,0,8.339,0.17,24.22,6.279,8.716,3.353-0.522-0.874-0.522-0.874z"/>
  </g>
  <g id="g670" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path672" d="m45.84,12.961s-0.93,0.644-0.716-0.537c0.215-1.181,28.423-14.351,32.037-14.101,0,0-30.248,13.206-31.321,14.638z"/>
  </g>
  <g id="g674" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path676" d="m42.446,13.6s-0.876,0.715-0.755-0.479,27.208-16.539,30.83-16.573c0,0-29.117,15.541-30.075,17.052z"/>
  </g>
  <g id="g678" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path680" d="m39.16,14.975s-0.828,0.772-0.786-0.428c0.042-1.199,19.859-16.696,29.671-18.57,0,0-18.03,8.127-28.885,18.998z"/>
  </g>
  <g id="g682" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path684" d="m36.284,16.838s-0.745,0.694-0.707-0.385c0.038-1.08,17.872-15.027,26.703-16.713,0,0-16.226,7.314-25.996,17.098z"/>
  </g>
  <g id="g686" fill="#CCC">
   <path id="path688" d="m4.6,164.8s-15.2-2.4,1.6-4c0,0,18-2,22-7.2,0,0,13.6-9.2,16.4-9.6s19.2-4,19.6-6.4,6.4-4.8,8-4,1.6,10-1.2,10.8-21.6,8-28,9.2-18,8.8-22.8,10-15.6,1.2-15.6,1.2z"/>
  </g>
  <g id="g690" fill="#000">
   <path id="path692" d="m77.6,127.4s-3,1.6-4.2,4.2c0,0-6.4,10.6-20.6,13.8,0,0-23,9-30.8,11,0,0-13.4,5-20.8,4.2,0,0-7,0.2-0.8,1.8,0,0,20.2-2,23.6-3.8,0,0,15.6-5.2,18.6-7.8s21.2-7.6,23.4-9.6,12-10.4,11.6-13.8z"/>
  </g>
  <g id="g694" fill="#000">
   <path id="path696" d="m18.882,158.91s5.229-0.23,4.076,1.32-3.601,0.68-3.601,0.68l-0.475-2z"/>
  </g>
  <g id="g698" fill="#000">
   <path id="path700" d="m11.68,160.26s5.228-0.22,4.076,1.33c-1.153,1.55-3.601,0.67-3.601,0.67l-0.475-2z"/>
  </g>
  <g id="g702" fill="#000">
   <path id="path704" d="m1.251,161.51s5.229-0.23,4.076,1.32-3.601,0.68-3.601,0.68l-0.475-2z"/>
  </g>
  <g id="g706" fill="#000">
   <path id="path708" d="m-6.383,162.06s5.229-0.23,4.076,1.32-3.601,0.67-3.601,0.67l-0.475-1.99z"/>
  </g>
  <g id="g710" fill="#000">
   <path id="path712" d="m35.415,151.51s6.96-0.3,5.425,1.76c-1.534,2.07-4.793,0.9-4.793,0.9l-0.632-2.66z"/>
  </g>
  <g id="g714" fill="#000">
   <path id="path716" d="m45.73,147.09s5.959-3.3,5.425,1.76c-0.27,2.55-4.793,0.9-4.793,0.9l-0.632-2.66z"/>
  </g>
  <g id="g718" fill="#000">
   <path id="path720" d="m54.862,144.27s7.159-3.7,5.425,1.77c-0.778,2.44-4.794,0.9-4.794,0.9l-0.631-2.67z"/>
  </g>
  <g id="g722" fill="#000">
   <path id="path724" d="m64.376,139.45s4.359-4.9,5.425,1.76c0.406,2.54-4.793,0.9-4.793,0.9l-0.632-2.66z"/>
  </g>
  <g id="g726" fill="#000">
   <path id="path728" d="m26.834,156s5.228-0.23,4.076,1.32c-1.153,1.55-3.602,0.68-3.602,0.68l-0.474-2z"/>
  </g>
  <g id="g730" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path732" d="m62.434,34.603s-0.726,0.665-0.727-0.406c0-1.07,17.484-14.334,26.327-15.718,0,0-16.099,6.729-25.6,16.124z"/>
  </g>
  <g id="g734" fill="#000">
   <path id="path736" d="m65.4,98.4s22.001,22.4,31.201,26c0,0,9.199,11.2,5.199,37.2,0,0-3.199,7.6-6.399-13.2,0,0,3.2-25.2-8-9.2,0,0-8.401-9.9-2.001-9.6,0,0,3.201,2,3.601,0.4s-7.601-15.2-24.801-29.6,1.2-2,1.2-2z"/>
  </g>
  <g id="g738" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path740" d="m7,137.2s-0.2-1.8,1.6-1,96,7,127.6,31c0,0-45.199-23.2-129.2-30z"/>
  </g>
  <g id="g742" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path744" d="m17.4,132.8s-0.2-1.8,1.6-1,138.4-0.2,162,32.2c0,0-22-25.2-163.6-31.2z"/>
  </g>
  <g id="g746" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path748" d="m29,128.8s-0.2-1.8,1.6-1,175.2-12.2,198.8,20.2c0,0-9.6-25.6-200.4-19.2z"/>
  </g>
  <g id="g750" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path752" d="m39,124s-0.2-1.8,1.6-1,124-37.8,147.6-5.4c0,0-13.4-24.6-149.2,6.4z"/>
  </g>
  <g id="g754" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path756" d="m-19,146.8s-0.2-1.8,1.6-1,19.6,3,21.6,41.8c0,0-7.2-42-23.2-40.8z"/>
  </g>
  <g id="g758" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path760" d="m-27.8,148.4s-0.2-1.8,1.6-1,16-3.8,13.2,35c0,0,1.2-35.2-14.8-34z"/>
  </g>
  <g id="g762" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path764" d="m-35.8,148.8s-0.2-1.8,1.6-1,17.2,1.4,4.8,23.8c0,0,9.6-24-6.4-22.8z"/>
  </g>
  <g id="g766" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path768" d="m11.526,104.46s-0.444,2,1.105,0.79c16.068-12.628,48.51-71.53,104.2-77.164,0,0-38.312-12.11-105.3,76.374z"/>
  </g>
  <g id="g770" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path772" d="m22.726,102.66s-1.363-1.19,0.505-1.81c1.868-0.63,114.31-73.13,153.6-65.164,0,0-27.11-7.51-154.1,66.974z"/>
  </g>
  <g id="g774" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path776" d="m1.885,108.77s-0.509,1.6,1.202,0.62c8.975-5.12,12.59-62.331,56.167-63.586,0,0-32.411-14.714-57.369,62.966z"/>
  </g>
  <g id="g778" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path780" d="m-18.038,119.79s-1.077,1.29,0.876,1.03c10.246-1.33,31.651-42.598,76.09-37.519,0,0-31.966-14.346-76.966,36.489z"/>
  </g>
  <g id="g782" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path784" d="m-6.8,113.67s-0.811,1.47,1.058,0.84c9.799-3.27,22.883-47.885,67.471-51.432,0,0-34.126-7.943-68.529,50.592z"/>
  </g>
  <g id="g786" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path788" d="m-25.078,124.91s-0.873,1.04,0.709,0.84c8.299-1.08,25.637-34.51,61.633-30.396,0,0-25.893-11.62-62.342,29.556z"/>
  </g>
  <g id="g790" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path792" d="m-32.677,130.82s-1.005,1.05,0.586,0.93c4.168-0.31,34.806-33.39,53.274-17.89,0,0-12.015-18.721-53.86,16.96z"/>
  </g>
  <g id="g794" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path796" d="m36.855,98.898s-1.201-1.355,0.731-1.74c1.932-0.384,122.63-58.097,160.59-45.231,0,0-25.94-10.874-161.32,46.971z"/>
  </g>
  <g id="g798" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path800" d="m3.4,163.2s-0.2-1.8,1.6-1,17.2,1.4,4.8,23.8c0,0,9.6-24-6.4-22.8z"/>
  </g>
  <g id="g802" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path804" d="m13.8,161.6s-0.2-1.8,1.6-1,19.6,3,21.6,41.8c0,0-7.2-42-23.2-40.8z"/>
  </g>
  <g id="g806" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path808" d="m20.6,160s-0.2-1.8,1.6-1,26.4,4.2,50,36.6c0,0-35.6-36.8-51.6-35.6z"/>
  </g>
  <g id="g810" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path812" d="m28.225,157.97s-0.437-1.76,1.453-1.2c1.89,0.55,22.324-1.35,60.421,32.83,0,0-46.175-34.94-61.874-31.63z"/>
  </g>
  <g id="g814" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path816" d="m38.625,153.57s-0.437-1.76,1.453-1.2c1.89,0.55,36.724,5.05,88.422,40.03,0,0-74.176-42.14-89.875-38.83z"/>
  </g>
  <g id="g818" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path820" d="m-1.8,142s-0.2-1.8,1.6-1,55.2,3.4,85.6,30.2c0,0-34.901-24.77-87.2-29.2z"/>
  </g>
  <g id="g822" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path824" d="m-11.8,146s-0.2-1.8,1.6-1,26.4,4.2,50,36.6c0,0-35.6-36.8-51.6-35.6z"/>
  </g>
  <g id="g826" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path828" d="m49.503,148.96s-0.565-1.72,1.361-1.3c1.926,0.41,36.996,2.34,91.116,33.44,0,0-77.663-34.4-92.477-32.14z"/>
  </g>
  <g id="g830" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path832" d="m57.903,146.56s-0.565-1.72,1.361-1.3c1.926,0.41,36.996,2.34,91.116,33.44,0,0-77.063-34.8-92.477-32.14z"/>
  </g>
  <g id="g834" stroke-width="0.1" stroke="#000" fill="#FFF">
   <path id="path836" d="m67.503,141.56s-0.565-1.72,1.361-1.3c1.926,0.41,44.996,4.74,134.72,39.04,0,0-120.66-40.4-136.08-37.74z"/>
  </g>
  <g id="g838" fill="#000">
   <path id="path840" d="m-43.8,148.4s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g842" fill="#000">
   <path id="path844" d="m-13,162.4s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g846" fill="#000">
   <path id="path848" d="m-21.8,162s5.2-0.4,4,1.2-3.6,0.8-3.6,0.8l-0.4-2z"/>
  </g>
  <g id="g850" fill="#000">
   <path id="path852" d="m-117.17,150.18s5.05,1.32,3.39,2.44-3.67-0.42-3.67-0.42l0.28-2.02z"/>
  </g>
  <g id="g854" fill="#000">
   <path id="path856" d="m-115.17,140.58s5.05,1.32,3.39,2.44-3.67-0.42-3.67-0.42l0.28-2.02z"/>
  </g>
  <g id="g858" fill="#000">
   <path id="path860" d="m-122.37,136.18s5.05,1.32,3.39,2.44-3.67-0.42-3.67-0.42l0.28-2.02z"/>
  </g>
  <g id="g862" fill="#CCC">
   <path id="path864" d="m-42.6,211.2-5.6,2c-2,0-13.2,3.6-18.8,13.6,0,0,12.4-9.6,24.4-15.6z"/>
  </g>
  <g id="g866" fill="#CCC">
   <path id="path868" d="m45.116,303.85c0.141,0.25,0.196,0.67,0.488,0.69,0.658,0.04,1.891,0.34,1.766-0.29-0.848-4.31-1.722-9.25-5.855-11.05-0.639-0.28-2.081,0.13-2.155,1.02-0.127,1.52-0.244,2.87,0.065,4.33,0.3,1.43,2.458,1.43,3.375,0.05,0.936,1.67,1.368,3.52,2.316,5.25z"/>
  </g>
  <g id="g870" fill="#CCC">
   <path id="path872" d="m34.038,308.58c0.748,1.41,0.621,3.27,2.036,3.84,0.74,0.29,2.59-0.68,2.172-1.76-0.802-2.06-1.19-4.3-2.579-6.11-0.2-0.26,0.04-0.79-0.12-1.12-0.594-1.22-1.739-1.96-3.147-1.63-1.115,2.2,0.033,4.33,1.555,6.04,0.136,0.15-0.03,0.53,0.083,0.74z"/>
  </g>
  <g id="g874" fill="#CCC">
   <path id="path876" d="m-5.564,303.39c-0.108-0.38-0.146-0.84,0.019-1.16,0.531-1.03,1.324-2.15,0.987-3.18-0.348-1.05-1.464-0.87-2.114-0.3-1.135,0.99-1.184,2.82-1.875,4.18-0.196,0.38-0.145,0.96-0.586,1.35-0.474,0.42-0.914,1.94-0.818,2.51,0.053,0.32-0.13,10.22,0.092,9.96,0.619-0.73,3.669-10.47,3.738-11.36,0.057-0.73,0.789-1.19,0.557-2z"/>
  </g>
  <g id="g878" fill="#CCC">
   <path id="path880" d="m-31.202,296.6c2.634-2.5,5.424-5.46,4.982-9.17-0.116-0.98-1.891-0.45-2.078,0.39-0.802,3.63-2.841,6.29-5.409,8.68-2.196,2.05-4.058,8.39-4.293,8.9,3.697-5.26,5.954-8,6.798-8.8z"/>
  </g>
  <g id="g882" fill="#CCC">
   <path id="path884" d="m-44.776,290.64c0.523-0.38,0.221-0.87,0.438-1.2,0.953-1.46,2.254-2.7,2.272-4.44,0.003-0.28-0.375-0.59-0.71-0.36-0.277,0.18-0.619,0.31-0.727,0.44-2.03,2.45-3.43,5.12-4.873,7.93-0.183,0.36-1.327,4.85-1.014,4.96,0.239,0.09,1.959-4.09,2.169-4.21,1.263-0.68,1.275-2.3,2.445-3.12z"/>
  </g>
  <g id="g886" fill="#CCC">
   <path id="path888" d="m-28.043,310.18c0.444-0.87,2.02-2.07,1.907-2.96-0.118-0.93,0.35-2.37-0.562-1.68-1.257,0.94-4.706,2.29-4.976,8.1-0.026,0.57,2.948-2.12,3.631-3.46z"/>
  </g>
  <g id="g890" fill="#CCC">
   <path id="path892" d="m-13.6,293c0.4-0.67,1.108-0.19,1.567-0.46,0.648-0.37,1.259-0.93,1.551-1.58,0.97-2.14,2.739-3.96,2.882-6.36-1.491-1.4-2.17,0.64-2.8,1.6-1.323-1.65-2.322,0.23-3.622,0.75-0.07,0.03-0.283-0.32-0.358-0.29-1.177,0.44-1.857,1.52-2.855,2.3-0.171,0.13-0.576-0.05-0.723,0.09-0.652,0.6-1.625,0.93-1.905,1.61-1.11,2.7-4.25,4.8-6.137,12.34,0.381,0.91,4.512-6.64,4.999-7.34,0.836-1.2,0.954,1.66,2.23,1,0.051-0.03,0.237,0.21,0.371,0.34,0.194-0.28,0.412-0.51,0.8-0.4,0-0.4-0.134-0.96,0.067-1.11,1.237-0.98,1.153-2.05,1.933-3.29,0.458,0.79,1.519,0.07,2,0.8z"/>
  </g>
  <g id="g894" fill="#CCC">
   <path id="path896" d="m46.2,347.4s7.4-20.4,3-31.6c0,0,11.4,21.6,6.8,32.8,0,0-0.4-10.4-4.4-15.4,0,0-4,12.8-5.4,14.2z"/>
  </g>
  <g id="g898" fill="#CCC">
   <path id="path900" d="m31.4,344.8s5.4-8.8-2.6-27.2c0,0-0.8,20.4-7.6,31.4,0,0,14.2-20.2,10.2-4.2z"/>
  </g>
  <g id="g902" fill="#CCC">
   <path id="path904" d="m21.4,342.8s-0.2-20,0.2-23c0,0-3.8,16.6-14,26.2,0,0,14.4-12,13.8-3.2z"/>
  </g>
  <g id="g906" fill="#CCC">
   <path id="path908" d="m11.8,310.8s6,13.6-4,32c0,0,6.4-12.2,1.6-19.2,0,0,2.6-3.4,2.4-12.8z"/>
  </g>
  <g id="g910" fill="#CCC">
   <path id="path912" d="m-7.4,342.4s-1-15.6,0.8-17.8c0,0,0.2-6.4-0.2-7.4,0,0,4-6.2,4.2,1.2,0,0,1.4,7.8,4.2,12.4,0,0,3.6,5.4,3.4,11.8,0,0-10-30.2-12.4-0.2z"/>
  </g>
  <g id="g914" fill="#CCC">
   <path id="path916" d="m-11,314.8s-6.6,10.8-8.4,29.8c0,0-1.4-6.2,2.4-20.6,0,0,4.2-15.4,6-9.2z"/>
  </g>
  <g id="g918" fill="#CCC">
   <path id="path920" d="m-32.8,334.6s5-5.4,6.4-10.4c0,0,3.6-15.8-2.8-7.2,0,0,0.2,8-8,15.4,0,0,4.8-2.4,4.4,2.2z"/>
  </g>
  <g id="g922" fill="#CCC">
   <path id="path924" d="m-38.6,329.6s3.4-17.4,4.2-18.2c0,0,1.8-3.4-1-0.2,0,0-8.8,19.2-12.8,25.8,0,0,8-9.2,9.6-7.4z"/>
  </g>
  <g id="g926" fill="#CCC">
   <path id="path928" d="m-44.4,313s11.6-22.4-10.2,3.4c0,0,11-9.8,10.2-3.4z"/>
  </g>
  <g id="g930" fill="#CCC">
   <path id="path932" d="m-59.8,298.4s4.8-18.8,7.4-18.6l1.6,1.6s-6,9.6-5.4,19.4c0,0-0.6-9.6-3.6-2.4z"/>
  </g>
  <g id="g934" fill="#CCC">
   <path id="path936" d="m270.5,287s-12-10-14.5-13.5c0,0,13.5,18.5,13.5,25.5,0,0,2.5-7.5,1-12z"/>
  </g>
  <g id="g938" fill="#CCC">
   <path id="path940" d="m276,265s-21-15-24.5-22.5c0,0,26.5,29.5,26.5,34,0,0,0.5-9-2-11.5z"/>
  </g>
  <g id="g942" fill="#CCC">
   <path id="path944" d="m293,111s-12-8-13.5-6c0,0,10.5,6.5,13,15,0,0-1.5-9,0.5-9z"/>
  </g>
  <g id="g946" fill="#CCC">
   <path id="path948" d="m301.5,191.5-17.5-12s19,17,19.5,21l-2-9z"/>
  </g>
  <g id="g950" stroke="#000">
   <path id="path952" d="m-89.25,169,22,4.75"/>
  </g>
  <g id="g954" stroke="#000">
   <path id="path956" d="m-39,331s-0.5-3.5-9.5,7"/>
  </g>
  <g id="g958" stroke="#000">
   <path id="path960" d="m-33.5,336s2-6.5-4.5-2"/>
  </g>
  <g id="g962" stroke="#000">
   <path id="path964" d="m20.5,344.5s1.5-11-10,2"/>
  </g>
 </g>
</svg>

""";

const String singlePath = """
    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <!-- Created with Inkscape (http://www.inkscape.org/) -->
    <svg
    xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns="http://www.w3.org/2000/svg"
    xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
    xmlns:ns1="http://sozi.baierouge.fr"
    xmlns:cc="http://creativecommons.org/ns#"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    id="svg2"
    sodipodi:docname="Blue_Rose.svg"
    viewBox="0 0 585.63 646.09"
    version="1.1"
    inkscape:version="0.48.4 r9939"
    >
    <defs
      id="defs4"
    >
    <linearGradient
        id="linearGradient3960"
      >
      <stop
          id="stop3962"
          style="stop-color:#232dd4"
          offset="0"
      />
      <stop
          id="stop3964"
          style="stop-color:#5497af"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient3862"
      >
      <stop
          id="stop3864"
          style="stop-color:#00041d"
          offset="0"
      />
      <stop
          id="stop3866"
          style="stop-color:#214bc0"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient3766"
      >
      <stop
          id="stop3768"
          style="stop-color:#102764"
          offset="0"
      />
      <stop
          id="stop3770"
          style="stop-color:#2583ce"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4249"
        y2="539.15"
        gradientUnits="userSpaceOnUse"
        x2="679.79"
        gradientTransform="matrix(.81238 0 0 .81238 52.448 99.857)"
        y1="539.15"
        x1="414.5"
        inkscape:collect="always"
      >
      <stop
          id="stop3946-3"
          style="stop-color:#001ff9"
          offset="0"
      />
      <stop
          id="stop3948-2"
          style="stop-color:#5eb1fb"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4252"
        y2="694.77"
        gradientUnits="userSpaceOnUse"
        x2="480.32"
        gradientTransform="matrix(.81238 0 0 .81238 53.362 100.38)"
        y1="694.77"
        x1="445.99"
        inkscape:collect="always"
      >
      <stop
          id="stop4040-7"
          style="stop-color:#89434e"
          offset="0"
      />
      <stop
          id="stop4042-6"
          style="stop-color:#95aa78"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4255"
        y2="704.36"
        gradientUnits="userSpaceOnUse"
        x2="456.08"
        gradientTransform="matrix(.81238 0 0 .81238 53.154 99.859)"
        y1="704.36"
        x1="142.94"
        inkscape:collect="always"
      >
      <stop
          id="stop3864-7"
          style="stop-color:#0c0a5e"
          offset="0"
      />
      <stop
          id="stop3866-1"
          style="stop-color:#0089ba"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4259"
        y2="508.4"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="285.36"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="508.4"
        x1="100.52"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4264"
        y2="388.44"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="676.29"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="388.44"
        x1="537.91"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4267"
        y2="284.9"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="240.92"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="386.42"
        x1="319.21"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4270"
        y2="247.27"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="498.51"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="247.27"
        x1="311.64"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4273"
        y2="355.36"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="318.7"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="355.36"
        x1="209.61"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4276"
        y2="374.15"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="570.5"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="374.15"
        x1="375.21"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4279"
        y2="268.79"
        gradientUnits="userSpaceOnUse"
        x2="308.36"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="390.93"
        x1="414.5"
        inkscape:collect="always"
      >
      <stop
          id="stop3946"
          style="stop-color:#2f3f9d"
          offset="0"
      />
      <stop
          id="stop3948"
          style="stop-color:#97e7dc"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4282"
        y2="359.14"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="378.8"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="359.14"
        x1="347.5"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4285"
        y2="366.22"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="383.35"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="366.22"
        x1="354.06"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4288"
        y2="393.24"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="379.31"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="369.5"
        x1="337.9"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4291"
        y2="366.72"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="389.41"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="366.72"
        x1="296.99"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4294"
        y2="414.2"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="400.02"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="414.2"
        x1="302.04"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4297"
        y2="389.2"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="398"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="389.2"
        x1="258.1"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4300"
        y2="430.61"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="289.91"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="430.61"
        x1="266.69"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4303"
        y2="376.32"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="445.98"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="376.32"
        x1="387.4"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4306"
        y2="417.48"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="389.91"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="417.48"
        x1="205.57"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4309"
        y2="551.65"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="335.5"
        gradientTransform="matrix(.81238 0 0 .81238 52.969 99.791)"
        y1="551.65"
        x1="250.93"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4312"
        y2="588.79"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="359.79"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="588.79"
        x1="310.93"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4315"
        y2="367.48"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="468.2"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="367.48"
        x1="418.71"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4318"
        y2="444.25"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="517.7"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="444.25"
        x1="418.71"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4321"
        y2="358.39"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="322.74"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="604.86"
        x1="416.69"
        inkscape:collect="always"
    />
    </defs
    >
    <sodipodi:namedview
      id="base"
      bordercolor="#666666"
      inkscape:pageshadow="2"
      inkscape:window-y="47"
      fit-margin-left="0"
      pagecolor="#ffffff"
      inkscape:window-height="644"
      inkscape:window-maximized="0"
      inkscape:zoom="0.49497475"
      inkscape:window-x="539"
      showgrid="false"
      borderopacity="1.0"
      inkscape:current-layer="layer1"
      inkscape:cx="353.64328"
      inkscape:cy="368.49807"
      fit-margin-top="0"
      fit-margin-right="0"
      fit-margin-bottom="0"
      inkscape:window-width="813"
      inkscape:pageopacity="0.0"
      inkscape:document-units="px"
    />
    <g
      id="layer1"
      inkscape:label="Livello 1"
      inkscape:groupmode="layer"
      transform="translate(-79.234 -203.13)"
    >
    <g
        id="g4323"
      >
      <path
          id="path2996"
          d="m430.05 569.63-4.4843-17.778 0.38115-53.822 2.4619-20.516 1.6413-43.493c-7.1742 0.58782-12.41-1.3167-24.619 5.7444l-15.592 10.668-31.184 22.157c-4.9389 2.0804-6.0818 3.7813-18.054 6.565l-7.784-0.88961-20.938-2.3929-24.619-4.9238c-2.6525-0.41362-5.2478-0.94352-8.6372 0.1408-4.9675 1.7898-7.9741 2.9906-11.008 5.9392-2.3144 1.4207-6.4976 2.3998-7.4354 6.2294-1.093 1.8232-2.7462 3.8332-1.6412 4.9238 6.247 13.098 16.953 20.252 25.44 30.363l20.516 34.466 10.668 17.233c3.8296 7.0724 7.6592 6.8954 11.489 9.8476 16.139 6.931 32.278 12.408 48.417 13.951l11.489 0.82063c8.1763-0.95623 15.857-3.7496 20.325-8.2063 9.7411-8.5943 20.434-12.187 23.168-17.028z"
          sodipodi:nodetypes="cccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4321)"
          inkscape:connector-curvature="0"
      />
    </g
    >
    </g
    >
    <metadata
    >
    <rdf:RDF
      >
      <cc:Work
        >
        <dc:format
          >image/svg+xml</dc:format
        >
        <dc:type
            rdf:resource="http://purl.org/dc/dcmitype/StillImage"
        />
        <cc:license
            rdf:resource="http://creativecommons.org/licenses/publicdomain/"
        />
        <dc:publisher
          >
          <cc:Agent
              rdf:about="http://openclipart.org/"
            >
            <dc:title
              >Openclipart</dc:title
            >
          </cc:Agent
          >
        </dc:publisher
        >
      </cc:Work
      >
      <cc:License
          rdf:about="http://creativecommons.org/licenses/publicdomain/"
        >
        <cc:permits
            rdf:resource="http://creativecommons.org/ns#Reproduction"
        />
        <cc:permits
            rdf:resource="http://creativecommons.org/ns#Distribution"
        />
        <cc:permits
            rdf:resource="http://creativecommons.org/ns#DerivativeWorks"
        />
      </cc:License
      >
    </rdf:RDF
    >
    </metadata
    >
    </svg
    >

    """;

const String kidString = """
    <?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <!-- Created with Inkscape (http://www.inkscape.org/) -->

    <svg
       xmlns:dc="http://purl.org/dc/elements/1.1/"
       xmlns:cc="http://creativecommons.org/ns#"
       xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
       xmlns:svg="http://www.w3.org/2000/svg"
       xmlns="http://www.w3.org/2000/svg"
       xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
       xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
       width="210mm"
       height="297mm"
       viewBox="0 0 210 297"
       version="1.1"
       id="svg956"
       inkscape:version="0.92.5 (2060ec1f9f, 2020-04-08)"
       sodipodi:docname="callcentre_worker.svg">
      <defs
         id="defs950" />
      <sodipodi:namedview
         id="base"
         pagecolor="#ffffff"
         bordercolor="#666666"
         borderopacity="1.0"
         inkscape:pageopacity="0.0"
         inkscape:pageshadow="2"
         inkscape:zoom="0.35"
         inkscape:cx="-132.85714"
         inkscape:cy="560"
         inkscape:document-units="mm"
         inkscape:current-layer="layer1"
         showgrid="false"
         inkscape:window-width="1470"
         inkscape:window-height="656"
         inkscape:window-x="122"
         inkscape:window-y="77"
         inkscape:window-maximized="0" />
      <metadata
         id="metadata953">
        <rdf:RDF>
          <cc:Work
             rdf:about="">
            <dc:format>image/svg+xml</dc:format>
            <dc:type
               rdf:resource="http://purl.org/dc/dcmitype/StillImage" />
            <dc:title></dc:title>
          </cc:Work>
        </rdf:RDF>
      </metadata>
      <g
         inkscape:label="Layer 1"
         inkscape:groupmode="layer"
         id="layer1">
        <ellipse
           style="fill:#ac9393;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           id="path3844"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602"
           cx="145.80368"
           cy="201.21481"
           rx="19.282795"
           ry="4.6131086" />
        <path
           style="fill:#1a1a1a;stroke:none;stroke-width:0.73067915"
           d="m 159.92552,103.19222 c -48.24866,30.80285 -88.228632,-7.038447 -51.66944,-32.880553 -1.92834,6.246637 -1.12882,13.075714 4.69722,15.135491 -0.48216,-7.044258 2.46164,-13.189947 8.87254,-17.745064 l 1.10716,5.677723 6.19962,-7.243461 c 0,0 -0.0624,5.541248 1.56575,9.916359 2.6991,7.254333 15.77319,6.162552 22.90088,8.007794 4.04206,1.04643 9.45779,6.605781 9.45779,6.605781 14.17356,-0.758986 12.95895,9.43736 13.30877,23.48614 0,0 1.82671,-2.60958 -2.87052,-3.13148 -8.54207,1.08996 -4.90817,8.56599 -5.74105,14.09167 l -4.6972,1.56573 c -4.43382,-7.73527 -3.13152,-13.51874 -3.13152,-23.48613 z"
           id="path2996"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccccsscccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#4d4d4d;stroke:none;stroke-width:0.73067915"
           d="m 161.76505,91.791891 -2.21428,9.595279 -8.11908,3.32144 c 2.45518,-2.32701 7.77699,-7.064371 6.44525,-8.901935 -7.42225,-5.701294 -6.67154,-5.74576 -16.04052,-6.229074 10.17706,-6.863236 21.77104,11.434849 15.131,-1.845242 z"
           id="path2998"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#b3b3b3;stroke:none;stroke-width:0.73067915"
           d="m 73.193371,82.93473 -6.273836,0.36905 7.01193,68.64307 8.488122,-0.36906 z"
           id="path3768"
           inkscape:connector-curvature="0"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#ececec;stroke:none;stroke-width:0.73067915"
           d="m 66.550485,83.30378 -6.27382,11.440507 4.059531,50.559673 9.964321,7.01195 z"
           id="path3770"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#6c5353;stroke:none;stroke-width:0.73067915"
           d="m 116.00301,158.58971 c -1.47619,0 -87.833585,-1.10712 -87.833585,-1.10712 l -2.21429,11.44049 97.428845,-0.36905 z"
           id="path3774"
           inkscape:connector-curvature="0"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#483737;stroke:none;stroke-width:0.73067915"
           d="m 123.53683,168.50926 -0.10802,3.53763 -97.059778,0.0895 -0.413821,-3.21336 z"
           id="path3776"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#b3b3b3;stroke:none;stroke-width:0.73067915"
           d="m 63.967149,110.24433 -17.714339,4.79765 -6.64287,46.86918 42.809647,2.21429 -3.32144,-5.53574 h -32.10724 l 6.642887,-40.59534 11.071467,2.21429 z"
           id="path3772"
           inkscape:connector-curvature="0"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#ac9393;stroke:none;stroke-width:0.73067915"
           d="m 28.403286,172.08483 0.260952,33.14153 91.595862,0.26096 0.78287,-33.66344 z"
           id="path3778"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#e9c6af;stroke:none;stroke-width:0.73067915"
           d="m 110.60469,112.32572 c -3.13064,21.76879 8.25281,41.48375 31.83673,40.18734 14.95121,-2.78103 24.4267,-10.66469 27.40047,-24.52993 0,0 2.60958,-1.04383 3.6534,-1.30478 7.05584,-3.0881 6.49357,-17.59194 -0.26095,-15.91839 -1.8267,0.52194 -5.09791,1.81361 -5.61985,4.94509 -0.52192,3.13148 0.13983,9.1466 0.13983,9.1466 l -4.4363,1.30478 c 0,0 -3.13148,-4.43626 -3.13148,-6.52391 0,-2.08766 0.52193,-16.9622 0.52193,-16.9622 -17.99102,9.59717 -31.35894,15.20553 -50.1037,9.6554 z"
           id="path3780"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="cccccsccscc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <g
           id="g3790"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602"
           transform="matrix(0.73067917,0,0,0.73067917,-245.66473,-316.58663)">
          <ellipse
             transform="matrix(1,0,0,0.93442623,0,37.485108)"
             id="path3782"
             style="fill:#ffffff;fill-opacity:1;stroke:none"
             cx="535.35712"
             cy="604.32648"
             rx="10"
             ry="10.892858" />
          <ellipse
             id="path3784"
             style="fill:#1a1a1a;fill-opacity:1;stroke:none"
             cx="531.07141"
             cy="603.25507"
             rx="7.1428571"
             ry="6.9642859" />
          <ellipse
             id="path3786"
             style="fill:#ffffff;fill-opacity:1;stroke:none"
             cx="535.17859"
             cy="599.50507"
             rx="4.4642859"
             ry="4.2857141" />
        </g>
        <path
           style="fill:#333333;stroke:none;stroke-width:0.73067915"
           d="m 153.40162,116.50104 c 0,0 -4.95818,-3.39244 -7.8287,-3.13149 -2.87054,0.26095 -10.43828,3.65339 -10.43828,3.65339 0,0 5.21913,-2.34861 8.61157,-2.08764 3.39243,0.26096 9.65541,1.56574 9.65541,1.56574 z"
           id="path3788"
           inkscape:connector-curvature="0"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <g
           transform="matrix(0.73067917,0,0,0.73067917,-270.13132,-315.15137)"
           id="g3790-1"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602">
          <ellipse
             transform="matrix(1,0,0,0.93442623,0,37.485108)"
             id="path3782-7"
             style="fill:#ffffff;fill-opacity:1;stroke:none"
             cx="535.35712"
             cy="604.32648"
             rx="10"
             ry="10.892858" />
          <ellipse
             id="path3784-4"
             style="fill:#1a1a1a;fill-opacity:1;stroke:none"
             cx="531.07141"
             cy="603.25507"
             rx="7.1428571"
             ry="6.9642859" />
          <ellipse
             id="path3786-0"
             style="fill:#ffffff;fill-opacity:1;stroke:none"
             cx="535.17859"
             cy="599.50507"
             rx="4.4642859"
             ry="4.2857141" />
        </g>
        <path
           style="fill:#d1a589;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           d="m 129.65455,123.80783 c -3.13149,10.43829 -3.32912,13.78593 -3.32912,13.78593 3.09251,0.70885 4.56169,0.69419 8.11587,-1.66071 l -7.02728,0.76975 z"
           id="path3822"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#333333;stroke:none;stroke-width:0.73067915"
           d="m 110.65179,124.82176 c -1.6607,11.07147 -2.39878,21.03577 -0.9226,22.14292 1.47619,1.10715 10.70241,3.87503 12.9167,4.05953 2.2143,0.18455 6.64289,-0.9226 6.45837,-3.32142 -0.18453,-2.39883 -3.6905,-3.50597 -6.08932,-3.50597 -2.63223,0.42409 -9.73962,3.81134 -11.62505,0.55357 -0.55356,-1.29166 0.36905,-11.256 0.36905,-11.99408 0,-0.7381 -1.10715,-7.93455 -1.10715,-7.93455 z"
           id="path3824"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="csssccsc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#d35f5f;stroke:none;stroke-width:0.73067915"
           d="m 144.60428,142.72063 c -4.8063,2.18247 -9.88203,3.11135 -14.94645,1.84524 4.99,5.54406 10.68977,2.9815 14.94645,-1.84524 z"
           id="path3826"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#b3b3b3;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           d="m 101.24106,166.33973 -14.392904,-0.36905 -5.535716,-8.85717 14.761954,0.36908 z"
           id="path3832"
           inkscape:connector-curvature="0"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#ac9393;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           d="m 170.62222,153.97661 8.48812,1.84525 -2.95239,21.40481 -5.72023,2.76784 -0.36906,3.69052 -15.8691,3.13692 -21.03577,-0.92264 c 0,0 -4.4286,-6.27381 -3.13693,-6.45834 1.2917,-0.18453 14.02385,-2.2143 14.02385,-2.2143 l 21.40483,0.36905 z"
           id="path3840"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="cccccccsccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#6c5353;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           d="m 143.49713,192.72671 -0.18451,4.4286 -0.1845,1.66071 c 0,0 0.1845,1.10714 1.47616,1.29168 1.29168,0.18453 2.58333,-0.55357 2.58333,-0.55357 l 0.36906,-13.10123 h -4.42855 z"
           id="path3842"
           inkscape:connector-curvature="0"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#4d4d4d;stroke:none;stroke-width:0.73067915"
           d="m 161.58054,179.99455 -10.05658,7.01193 -0.64584,8.4881 -6.45835,-1.4762 c 1.73175,-1.11585 0.33099,-7.06949 1.9194,-8.33731 1.58841,-1.26779 5.05886,-3.93902 6.93777,-4.76391 l -10.33337,-0.55357 -12.54764,4.42859 -1.10715,-4.79763 c 0,0 12.73215,-3.13692 14.57744,-3.13692 1.8452,0 17.71432,3.13692 17.71432,3.13692 z"
           id="path3834"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccsccccsc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#333333;stroke:none;stroke-width:0.73067915"
           d="m 133.3483,151.94684 -13.6548,3.32146 -18.82148,0.36904 5.53572,5.90476 c 0,0 10.87771,-0.87497 16.23815,-1.84524 4.49189,-0.81305 13.28575,-3.32142 13.28575,-3.32142 l 5.1667,4.79761 1.10715,15.50006 19.74409,3.50596 c 8.91047,-6.23738 8.50459,-27.39231 3.50597,-41.88702 -9.72026,12.98545 -18.95598,14.39228 -32.10725,13.65479 z"
           id="path3830"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccscccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#ffffff;stroke:none;stroke-width:0.73067915"
           d="m 148.29476,152.13138 -6.08927,0.36903 2.58332,5.1667 4.61311,-0.36908 z"
           id="path3836"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#ffffff;stroke:none;stroke-width:0.73067915"
           d="m 149.9689,157.43763 -5.05216,1.21515 -0.95829,9.94214 3.85881,5.87203 4.47016,-6.68918 z"
           id="path3838"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="cccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#552200;stroke:none;stroke-width:0.73067915"
           d="m 130.39593,184.60766 -4.24406,1.66073 -4.24408,-9.59528 c 1.10817,-2.41804 4.12251,-2.48783 5.35122,-0.7381 0.92262,1.4762 2.76785,4.24406 2.76785,4.24406 z"
           id="path3846"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="cccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#552200;stroke:none;stroke-width:0.73067915"
           d="m 151.80074,197.33982 -1.29167,-2.67557 -6.0893,-0.46133 -5.3512,1.47619 c 0,0 -0.18453,2.9524 2.58335,3.32145 2.76785,0.36904 10.14882,-1.66074 10.14882,-1.66074 z"
           id="path3848"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccsc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#e9c6af;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           d="m 100.87204,155.2683 c 0,0 -5.351216,1.84521 -6.458366,2.39881 -1.10714,0.55355 -1.66071,0.9226 -1.66071,0.9226 0,0 1.29166,0.73813 1.29166,1.47619 0,0.7381 3.87504,2.2143 3.87504,2.2143 l 5.166656,-1.84524 c 0,0 -0.7381,1.10714 -1.10716,1.84524 -0.36902,0.73811 1.29168,1.10715 1.29168,1.10715 l 3.1369,-2.58335 z"
           id="path3850"
           inkscape:connector-curvature="0"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           d="m 165.27104,138.66109 c 0.55355,1.10716 14.39286,15.68457 14.39286,15.68457 l -0.36904,16.7917 -6.45836,-1.47618 0.5536,-13.28574 -8.85718,-8.30361 z"
           id="path3852"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#e9c6af;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           d="m 179.11034,170.95286 -6.27382,-1.10715 -1.84523,3.87502 0.73809,4.05952 c 2.29649,0.1303 4.55674,1.20648 6.82738,0.92262 l 0.18453,-3.87501 z"
           id="path3854"
           inkscape:connector-curvature="0"
           sodipodi:nodetypes="ccccccc"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
        <path
           style="fill:#333333;fill-opacity:1;stroke:none;stroke-width:0.73067915"
           d="m 125.7402,117.02294 -7.04584,-2.08764 -6.26296,1.30477 6.52392,-0.26095 z"
           id="path3893"
           inkscape:connector-curvature="0"
           inkscape:export-xdpi="143.09602"
           inkscape:export-ydpi="143.09602" />
      </g>
    </svg>
    """;

const String blueRoseString = """
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->
<svg
    xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns="http://www.w3.org/2000/svg"
    xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
    xmlns:ns1="http://sozi.baierouge.fr"
    xmlns:cc="http://creativecommons.org/ns#"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    id="svg2"
    sodipodi:docname="Blue_Rose.svg"
    viewBox="0 0 585.63 646.09"
    version="1.1"
    inkscape:version="0.48.4 r9939"
  >
  <defs
      id="defs4"
    >
    <linearGradient
        id="linearGradient3960"
      >
      <stop
          id="stop3962"
          style="stop-color:#232dd4"
          offset="0"
      />
      <stop
          id="stop3964"
          style="stop-color:#5497af"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient3862"
      >
      <stop
          id="stop3864"
          style="stop-color:#00041d"
          offset="0"
      />
      <stop
          id="stop3866"
          style="stop-color:#214bc0"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient3766"
      >
      <stop
          id="stop3768"
          style="stop-color:#102764"
          offset="0"
      />
      <stop
          id="stop3770"
          style="stop-color:#2583ce"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4249"
        y2="539.15"
        gradientUnits="userSpaceOnUse"
        x2="679.79"
        gradientTransform="matrix(.81238 0 0 .81238 52.448 99.857)"
        y1="539.15"
        x1="414.5"
        inkscape:collect="always"
      >
      <stop
          id="stop3946-3"
          style="stop-color:#001ff9"
          offset="0"
      />
      <stop
          id="stop3948-2"
          style="stop-color:#5eb1fb"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4252"
        y2="694.77"
        gradientUnits="userSpaceOnUse"
        x2="480.32"
        gradientTransform="matrix(.81238 0 0 .81238 53.362 100.38)"
        y1="694.77"
        x1="445.99"
        inkscape:collect="always"
      >
      <stop
          id="stop4040-7"
          style="stop-color:#89434e"
          offset="0"
      />
      <stop
          id="stop4042-6"
          style="stop-color:#95aa78"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4255"
        y2="704.36"
        gradientUnits="userSpaceOnUse"
        x2="456.08"
        gradientTransform="matrix(.81238 0 0 .81238 53.154 99.859)"
        y1="704.36"
        x1="142.94"
        inkscape:collect="always"
      >
      <stop
          id="stop3864-7"
          style="stop-color:#0c0a5e"
          offset="0"
      />
      <stop
          id="stop3866-1"
          style="stop-color:#0089ba"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4259"
        y2="508.4"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="285.36"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="508.4"
        x1="100.52"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4264"
        y2="388.44"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="676.29"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="388.44"
        x1="537.91"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4267"
        y2="284.9"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="240.92"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="386.42"
        x1="319.21"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4270"
        y2="247.27"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="498.51"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="247.27"
        x1="311.64"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4273"
        y2="355.36"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="318.7"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="355.36"
        x1="209.61"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4276"
        y2="374.15"
        xlink:href="#linearGradient3960"
        gradientUnits="userSpaceOnUse"
        x2="570.5"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="374.15"
        x1="375.21"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4279"
        y2="268.79"
        gradientUnits="userSpaceOnUse"
        x2="308.36"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="390.93"
        x1="414.5"
        inkscape:collect="always"
      >
      <stop
          id="stop3946"
          style="stop-color:#2f3f9d"
          offset="0"
      />
      <stop
          id="stop3948"
          style="stop-color:#97e7dc"
          offset="1"
      />
    </linearGradient
    >
    <linearGradient
        id="linearGradient4282"
        y2="359.14"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="378.8"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="359.14"
        x1="347.5"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4285"
        y2="366.22"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="383.35"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="366.22"
        x1="354.06"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4288"
        y2="393.24"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="379.31"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="369.5"
        x1="337.9"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4291"
        y2="366.72"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="389.41"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="366.72"
        x1="296.99"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4294"
        y2="414.2"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="400.02"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="414.2"
        x1="302.04"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4297"
        y2="389.2"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="398"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="389.2"
        x1="258.1"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4300"
        y2="430.61"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="289.91"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="430.61"
        x1="266.69"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4303"
        y2="376.32"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="445.98"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="376.32"
        x1="387.4"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4306"
        y2="417.48"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="389.91"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="417.48"
        x1="205.57"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4309"
        y2="551.65"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="335.5"
        gradientTransform="matrix(.81238 0 0 .81238 52.969 99.791)"
        y1="551.65"
        x1="250.93"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4312"
        y2="588.79"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="359.79"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="588.79"
        x1="310.93"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4315"
        y2="367.48"
        xlink:href="#linearGradient3862"
        gradientUnits="userSpaceOnUse"
        x2="468.2"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="367.48"
        x1="418.71"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4318"
        y2="444.25"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="517.7"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="444.25"
        x1="418.71"
        inkscape:collect="always"
    />
    <linearGradient
        id="linearGradient4321"
        y2="358.39"
        xlink:href="#linearGradient3766"
        gradientUnits="userSpaceOnUse"
        x2="322.74"
        gradientTransform="matrix(.81238 0 0 .81238 52.559 100.2)"
        y1="604.86"
        x1="416.69"
        inkscape:collect="always"
    />
  </defs
  >
  <sodipodi:namedview
      id="base"
      bordercolor="#666666"
      inkscape:pageshadow="2"
      inkscape:window-y="47"
      fit-margin-left="0"
      pagecolor="#ffffff"
      inkscape:window-height="644"
      inkscape:window-maximized="0"
      inkscape:zoom="0.49497475"
      inkscape:window-x="539"
      showgrid="false"
      borderopacity="1.0"
      inkscape:current-layer="layer1"
      inkscape:cx="353.64328"
      inkscape:cy="368.49807"
      fit-margin-top="0"
      fit-margin-right="0"
      fit-margin-bottom="0"
      inkscape:window-width="813"
      inkscape:pageopacity="0.0"
      inkscape:document-units="px"
  />
  <g
      id="layer1"
      inkscape:label="Livello 1"
      inkscape:groupmode="layer"
      transform="translate(-79.234 -203.13)"
    >
    <g
        id="g4323"
      >
      <path
          id="path2996"
          d="m430.05 569.63-4.4843-17.778 0.38115-53.822 2.4619-20.516 1.6413-43.493c-7.1742 0.58782-12.41-1.3167-24.619 5.7444l-15.592 10.668-31.184 22.157c-4.9389 2.0804-6.0818 3.7813-18.054 6.565l-7.784-0.88961-20.938-2.3929-24.619-4.9238c-2.6525-0.41362-5.2478-0.94352-8.6372 0.1408-4.9675 1.7898-7.9741 2.9906-11.008 5.9392-2.3144 1.4207-6.4976 2.3998-7.4354 6.2294-1.093 1.8232-2.7462 3.8332-1.6412 4.9238 6.247 13.098 16.953 20.252 25.44 30.363l20.516 34.466 10.668 17.233c3.8296 7.0724 7.6592 6.8954 11.489 9.8476 16.139 6.931 32.278 12.408 48.417 13.951l11.489 0.82063c8.1763-0.95623 15.857-3.7496 20.325-8.2063 9.7411-8.5943 20.434-12.187 23.168-17.028z"
          sodipodi:nodetypes="cccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4321)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3774"
          d="m430.25 570.66c11.237-0.0537 12.065-7.6258 15.387-11.078 9.625-3.4465 13.427-15.498 17.233-24.619 4.2833-13.477 9.2604-26.815 9.8476-41.031 1.8992-7.7452 0.16017-14.278 0-21.336-2.6648-10.509-6.503-20.628-11.489-30.363-6.7366-12.325-7.0194-26.315-19.065-37.799-1.3379-10.076 0.22872-19.257-4.7332-30.314-9.3005-5.1991-18.601-13.949-27.901-16.823-7.59-6.8595-10.966-2.6563-16.413-4.5135l29.543 29.543 9.6527 21.241c-1.5627 15.957-4.1783 31.442-3.4774 49.623-3.1279 24.157-7.1114 48.144-6.565 73.036l3.1417 25.771z"
          sodipodi:nodetypes="cccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4318)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3792"
          d="m393.12 352.78 29.132 29.543 10.258 19.285c0.62251 3.9382-1.9356 20.599-3.2825 32.415l-10.873 1.0258c-2.2952 0.47727-5.7305 1.1586-8.8218 2.2567l-11.489 7.3857 14.361-29.543 3.6928-10.668 3.6928-16.002z"
          sodipodi:nodetypes="ccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4315)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3802"
          d="m344.44 587.23-8.7041 11.605c-2.1158 2.3017-4.7117 3.8985-9.8646 1.7408l-9.8646-24.952-11.315-22.34 14.747 21.315 12.526 7.4088z"
          sodipodi:nodetypes="cccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4312)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3812"
          d="m323.48 595.65-10.58-0.42843c-22.945-11.606-57.03-90.234-22.014-22.331l-13.927-27.273-11.025-17.408-8.7041-32.495 15.667 18.569 16.828 17.988 9.8646 11.605 12.766 24.371z"
          sodipodi:nodetypes="ccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4309)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3822"
          d="m295.47 538.24-16.823-16.823-22.157-25.44-8.6166-13.951-13.37-24.979-10.428-6.2045-4.1032-6.9754v-2.0516l11.489-8.6166 6.9753-10.258 3.6928-2.8722 8.2063-15.182 7.796-10.258 6.565-3.2825 7.796-5.3341 16.823-6.3599 9.4372-8.4114 8.8218-12.72 8.2063-17.849 5.1289-0.20515c4.4814-0.57824 5.4321 1.8699 6.1547 4.5134l10.258 6.1547 14.771 0.82063 16.823 4.1031c-3.7033 2.7734-6.4674 7.0496-12.72 5.7444l-14.771 4.5135-6.9754 4.5135-15.592 2.8722h-11.489l-9.4372 5.7444-9.0269 11.489-8.2063 12.309-5.7444 6.1547-10.668-0.41032-1.6413 5.3341 2.0516 1.6413 9.0269 3.6928-0.41032 4.9238-2.8722 12.309v13.54l1.6413 14.361-0.20516 9.2321-11.284 7.5908-3.2825 5.3341 5.3341 8.6166 20.516 22.157z"
          sodipodi:nodetypes="ccccccccccccccccccccccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4306)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3832"
          d="m374.25 459.05 2.0516-25.029v-19.285l-1.6413-24.209-3.5902-14.053-3.3851-5.6418 0.41031-5.7444 6.9754-6.9754 0.82063-5.3341 4.5135 3.2825 6.565 17.233 6.565 10.668 13.13 15.592 7.796 7.796-2.8722 9.8476-8.6166 16.002-4.9238 11.078-21.336 14.771z"
          sodipodi:nodetypes="ccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4303)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3842"
          d="m273.31 426.23 15.182 31.184-0.82064 13.13-6.1547-0.41031-4.9238 1.4361-4.9238 2.2567-2.0516-38.159z"
          sodipodi:nodetypes="cccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4300)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3852"
          d="m370.35 463.97-19.08-13.335-11.489-6.3599-24.209-7.3857-16.823-4.9238 1.6413-5.7444-5.3341-32.005v-7.3857l6.565 5.3341 15.592 26.67 4.9238-19.695 8.6166-16.002 9.8476-10.668 8.2063-4.1032h7.3857l12.925 12.72 2.4619-2.6671-3.4877-6.3599-0.82063-6.1547 7.796-8.2063 0.41032-4.5135-13.54 7.3857-16.823 5.3341-4.9238 0.41032-6.1547 4.5135-11.489 2.0516-14.361 0.82062-11.078 6.1547-9.0269 11.078-8.2063 13.13-4.9238 4.9238h-10.668c-0.87348 0.57128-1.7502 1.1361-2.2464 2.4619-0.89243 2.1883 0.028 3.017 0.60516 4.1032l11.078 4.1032v8.2063l14.771 30.774-0.41032 11.899 18.874 4.1032 29.132 3.6928 4.1032 1.231 13.13-4.5135 10.258-6.565z"
          sodipodi:nodetypes="cccccccccccccccccccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4297)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3872"
          d="m301 425.82c2.5243-3.1578 8.4041-0.70193 12.925-0.82063l13.951-3.0774 18.669-7.3857 15.797 2.2567 4.5135-0.20515 9.0269-10.463 0.41032 10.258-0.69831 17.632-0.94296 23.81 2.4619 1.2309-8.6166 6.565-1.6413-4.1032-27.491-17.233-41.031-11.899z"
          sodipodi:nodetypes="cccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4294)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3882"
          d="m299.98 428.28-5.7444-33.646 1.2309-8.2063 6.9754 5.3341 14.361 27.081 5.7444-20.105 8.6166-15.592 9.4372-11.489 8.6166-3.6928 6.9753 0.82063 11.899 11.899 2.0516 0.20516-4.9238 8.0011h-4.5135c-4.2078-2.0517 6.0922 2.9868 0.82062-0.41032l-13.13-8.2063-10.258 8.6166-6.1547 11.489-4.5135 13.951v8.2063l-0.41031 0.41032-18.054 2.4619-6.1547-0.82063z"
          sodipodi:nodetypes="cccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4291)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3896"
          d="m336.91 393.4 0.82063 7.796 5.3341 6.565 10.258 0.41031 8.2063-2.0516 2.8722-15.592 6.7702-12.925 3.4877 12.104 1.231 16.413-9.0269 10.668-20.926-2.0516-11.078 6.1547-6.9754 1.2309-0.41032-8.6166 5.7444-16.002z"
          sodipodi:nodetypes="cccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4288)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3906"
          d="m339.27 403.45s6.0521-4.7186 6.0521-6.3599 3.4877-0.20515 3.4877-0.20515l6.9754-7.1805 3.6928-2.4619 5.1289 2.0516-3.4877 16.413-5.9496 2.2567c-2.5059 1.8029-8.4114-0.13678-12.309 0.20515z"
          sodipodi:nodetypes="cscccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4285)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3916"
          d="m335.27 392.99 2.4619 9.4372 3.2825 0.82063 4.1032-6.1547 2.8722 1.2309 6.9754-7.796 4.9238-3.6928-11.078-6.1547-8.8218 5.3341z"
          sodipodi:nodetypes="cccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4282)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3926"
          d="m277.05 384.03-0.61547-11.951 30.245-23.076 9.8998-14.196 2.9014-11.605 5.8027-4.0619 11.025-1.7408 10.445 8.1238h4.6422l4.0619 7.5436 9.8646 3.4816 24.952 13.927 29.304 37.718c-0.12136 7.8623-2.2137 13.821-4.4018 18.989-9.9437-5.0775-21.551-18.297-27.223-31.175l-8.1238-18.569-3.4816-5.2225-6.383 3.4816-20.89-4.6422h-13.346l-11.605-9.8646-4.0619-1.1606-4.6422 0.58028-7.5436 17.988-9.8646 13.346-11.605 10.445-4.3023-0.0352z"
          sodipodi:nodetypes="cccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4279)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3950"
          d="m357.17 333.59 5.8379-8.0595 16.212-2.9718 9.3196-5.7323 5.2225-9.2844 18.569 4.6422 34.816 20.31 22.05 11.605 13.346 15.667 13.927 26.112 13.927 30.754 5.2225 25.532-0.58028 16.828-9.8646 17.408-13.346 13.346-13.346 5.8027-6.383 5.2224 1.7408-15.087-1.1606-13.927-6.2482-17.953-7.6783-16.863-9.2844-23.211-7.3985-9.7196-2.3314-21.58-3.2413-7.0276c-4.474-4.3354-11.249-9.6967-18.364-14.032l-9.2844-4.4722-8.874-3.4464h-6.4826l-10.756-7.0337-15.667-9.2844z"
          sodipodi:nodetypes="cccccccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4276)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3966"
          d="m224.07 438.54v-12.72l4.9238-13.13 4.9238-19.695 15.592-14.771 5.1289-5.1289 8.0011-20.926 4.5135-9.2321 9.4372-3.6928 12.309 5.3341h13.951l8.2063 1.6413-17.233 13.951-17.233 12.309v12.309l-10.668 5.7444-9.0269 4.9238-12.309 20.105-3.2825 6.1547-10.053 12.104z"
          sodipodi:nodetypes="ccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4273)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3976"
          d="m457.13 338.01-6.565-14.771-5.7444-13.951-14.771-14.771-20.516-15.592-18.054-8.2063-17.233-5.7444-20.516-0.82062-13.951 3.2825-9.8476 4.9238-10.668 13.951-8.2063 8.2063-4.9238 12.309 21.336 10.668 1.8792 1.3601 6.9633-1.4507 11.181 7.9891 3.9065-0.73565 4.5894 8.156c3.9015 1.7976 4.8708-5.0505 7.3062-7.5757l15.377-1.7408 9.2844-6.383 6.1954-8.7363 18.944 4.6246z"
          sodipodi:nodetypes="ccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4270)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3986"
          d="m329.52 318.31-25.029-13.13-3.6928-2.4619-1.6413-1.6413-2.8722-2.0516h-3.6928l-4.1031 2.8722-25.44 8.6166-11.489 2.4619-7.796 4.9238-10.668 4.1032-9.4372 6.9754-6.565 10.258-3.6928 11.489-0.41032 6.9754 0.82064 6.1547-0.41032 9.8476 2.0516 7.3857 5.7444 10.258 7.796 21.336 4.9238-18.464 5.3341-6.1547 16.823-15.592 5.3341-16.413 5.7444-12.72 9.4372-3.6928 6.565 2.8722 5.3341 2.0516h13.54l6.565 0.41031 2.0516 0.41032 5.3341-8.6166 3.2825-12.309 3.0774-2.667z"
          sodipodi:nodetypes="ccccccccccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4267)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path3996"
          d="m489.95 373.3 4.1032-0.41031 15.592 0.82062 12.309-1.6412 9.4372 2.8722 26.67 8.6166 15.182 7.796c7.2376 3.2553 7.1785 5.9302 6.565 8.2063l-2.8722 3.2825-7.3857 6.1547-2.8722 1.231c-1.9148 2.7354-1.9148 4.3767 0 4.9238l7.796 1.6412 7.796 0.41032 7.3857 2.0516c4.1983 0.84142 5.5016 3.1304 5.3341 6.1547l-6.9754 1.231-0.82062 2.667 4.5134 1.0258 3.2825 0.82064 4.5135 1.6413c3.0463 1.5045 2.7831 3.009 2.0516 4.5135l-5.9496 2.8722-6.3599 4.5135-1.6413 6.1547 2.0516 6.565-18.054-10.668-2.8722-2.4619-6.1547-1.231-8.2063-4.1031-8.2063 1.2309-10.258 4.1032-8.6166 5.7444-4.9238 4.9238-6.9753 4.5134-0.00001-19.08-4.7186-23.183-8.6166-18.669z"
          sodipodi:nodetypes="ccccccccccccccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4264)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path4006"
          d="m404.26 598.96-5.3924 12.526-6.9341 10.551 3.3469 10.205 1.8464 5.9375 2.9718 4.7126 9.7942 1.0901c3.4816 0.14517 6.9633 2.2796 10.445 0l11.025-1.7408h9.2844l22.631-5.8027 37.137-8.7041 19.729-6.9633 15.667-2.9014 19.729-13.927 11.605-19.149 11.025-14.507 9.2844-8.1238 4.0619-7.5435v-8.1238l-4.6422-2.3211-4.0619-0.58028 6.9633-15.667 5.2224-12.766 8.1238-13.346 6.383-13.927-0.58027-5.8027-5.8027-8.1238-4.0619-8.1238-12.766-5.8027-15.257-2.5967-4.4722-7.8482-8.1238-3.4816-4.6422 0.58028-11.436 2.9305-10.375 7.8191-7.2036 5.5624-5.2224 3.9976-9.2844 17.408-12.186 12.186-7.5436 3.4816-6.383 1.7408-6.9633 6.9633-2.3211 12.766-7.5436 23.791-8.7041 15.087-16.248 13.927-6.383 2.3211-11.025 8.1238-10.445 6.1074-5.9727 5.4276z"
          sodipodi:nodetypes="cccccccccccccccccccccccccccccccccccccccccccccccccccc"
          style="stroke:#f9f9f9;stroke-width:.81238px;fill:#f9f9f9"
          inkscape:connector-curvature="0"
      />
      <path
          id="path4016"
          d="m287.6 579.75-20.561 3.5739-30.343 7.1478-13.574 6.3536-5.5894 3.1768-9.5819 7.9419c-8.0331 5.9684-12.114 10.954-15.97 15.884-5.0385 6.7824-3.5597 9.2434-2.3955 11.913l-3.9925 5.5594-3.9924 5.5594-7.9849 16.678c-3.8998 5.1396-4.9414 10.279-1.323 15.419l6.1139 8.4072 10.38 16.678 14.373 17.472 19.962 19.061 5.9686 7.1477c5.0944 5.1723 7.8402 4.5045 11.598 6.3536l11.179 7.1478 11.179 15.09 11.977-4.7652 24.753 11.913 30.343 4.7652 25.552-3.971 15.97-8.7361 14.373-9.5304 7.1864-7.1477 8.7834-11.913 5.5894-11.119 12.268-46.277 3.99-15.975-1.5994-15.304-9.8671-7.4232-12.776-0.7942-6.3879-0.7942-2.3955-3.971-2.3955-10.325-3.194-4.7652-1.4433-7.3322 1.6342-15.318 2.2046 2.0009-13.375-1.3898-30.542-5.9565-6.3879 7.942-3.9925 0.99274c-5.3036 0.13727-13.108-1.6378-20.362-1.9855-6.8537-7.3463-10.667-14.186-20.96-20.848 0.5295-5.8594-3.5267-5.4932-4.3917-8.5376z"
          sodipodi:nodetypes="cccccccccccccccccccccccccccccccccccccccccccccccc"
          style="stroke:#e6e6e6;stroke-width:.78834px;fill:#e6e6e6"
          inkscape:connector-curvature="0"
      />
      <path
          id="path4026"
          d="m219.97 443.05-6.565-0.82062-9.0269-0.82063-4.9238-0.82063c-8.0377 1.8455-9.428 6.3499-12.309 10.258-1.497-0.37978-2.4907 2.5503-15.592 12.72l-7.3857 6.565-9.8476 0.82063-5.7444-1.6413c-1.9148-2.0602-3.8296-1.4917-5.7444 0.82063l-3.2825 6.565c-4.6791 8.957-6.2563 17.028-3.2825 23.798l-1.6413 10.668c-0.23911 9.7787 0.80368 16.994 4.9238 18.054l-1.6413 4.1032c0.0652 13.065 9.0339 17.226 13.951 25.44l13.951 13.951c3.2754 4.279 7.1605 6.0239 11.008 7.9247 8.6866 2.2065 6.8496 2.3317 10.438 3.0564l10.559 2.149c5.0943-0.38554 6.8665-1.9 9.0269-3.2825 4.9238 0.30944 9.8476-0.40724 14.771-1.6413l20.516-7.3857 31.184-7.3857 12.309-2.667-7.3857-13.746-12.309-21.952-8.2063-28.927-16.893-30.508-6.0843-11.344-10.053-5.7444z"
          sodipodi:nodetypes="cccccccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4259)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path4036"
          d="m443.03 634.35-1.5896 14.903-8.2 13.823 0.82 14.687 11.48 19.87-13.94-17.278-4.92-6.9113-1.64-11.231-6.56-25.054 11.275-1.7278z"
          sodipodi:nodetypes="ccccccccccc"
          style="stroke:#cccccc;stroke-width:.83321px;fill:#cccccc"
          inkscape:connector-curvature="0"
      />
      <path
          id="path4016-1"
          d="m286.83 563.75-21.131 3.6928-31.184 7.3857-13.951 6.565-5.7444 3.2825-9.8476 8.2063c-8.2558 6.1671-12.45 11.319-16.413 16.413-5.1782 7.0082-3.6584 9.551-2.4619 12.309l-4.1032 5.7444-4.1031 5.7444-8.2063 17.233c-4.0079 5.3106-5.0784 10.621-1.3597 15.932l6.2834 8.687 10.668 17.233 14.771 18.054 20.516 19.695 6.1341 7.3857c5.2357 5.3445 8.0576 4.6545 11.92 6.565l11.489 7.3857 11.489 15.592 12.309-4.9238 25.44 12.309 31.184 4.9238 26.26-4.1031 16.413-9.0269 14.771-9.8476 7.3857-7.3857 9.0269-12.309 5.7444-11.489 12.309-48.417 0.82063-12.309-4.9238-16.413-3.2825-10.668-13.13-0.82062-6.565-0.82064-2.4619-4.1031-2.4619-10.668-3.2825-4.9238 9.8476-14.771 2.8722-9.2321-10.258 2.667-13.746-1.4361-31.389-6.1547-6.565 8.2063-4.1032 1.0258c-5.4506 0.14183-13.471-1.6923-20.926-2.0516-7.0437-7.5908-10.962-14.658-21.542-21.542 0.54417-6.0545-3.6244-5.676-4.5135-8.8218z"
          sodipodi:nodetypes="cccccccccccccccccccccccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4255)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path4036-1"
          d="m443.84 633.07-4.783 15.316-8.2063 13.13 0.82062 13.951 11.489 18.874-13.951-16.413-4.9238-6.565-1.6412-10.668-6.565-23.798 11.284-1.6413z"
          sodipodi:nodetypes="ccccccccccc"
          style="stroke:#916f7c;stroke-width:.81238px;fill:url(#linearGradient4252)"
          inkscape:connector-curvature="0"
      />
      <path
          id="path4006-6"
          d="m399.04 591.77c-3.9796 5.2663-4.0211 8.5635-5.3924 12.526-2.3114 2.5066-4.6227 3.5764-6.9341 10.551 0.28204 4.9494 0.77308 5.0042 5.6683 10.026-0.7207 3.4441-0.9959 3.3981-0.47501 6.116 1.3592 3.7826 2.044 3.5189 2.9718 4.7126 4.3985 2.6309 6.6746 1.017 9.7942 1.0901 3.4816 0.14517 6.9633 2.2796 10.445 0l11.025-1.7408h9.2844l22.631-5.8027 37.137-8.7041 19.729-6.9633 16.025-3.6156c9.4421-1.9427 13.982-7.9284 19.372-13.212l11.605-19.149 11.025-14.507 9.2844-8.1238 4.0619-7.5435-0.71429-5.981-3.9279-4.4639-2.2762-2.0088 5.1776-14.239 5.2224-12.766 8.1238-13.346 6.383-13.927-0.58028-5.8027-2.9456-8.481-6.919-7.7667-12.766-5.8027-12.356-8.9796-7.3736-1.4653-8.1238-3.4816-4.6422 0.58028c-6.6334-1.2804-9.5254 0.43232-11.436 2.9305-2.9178 1.774-4.412 1.3546-10.375 7.8191l-7.2036 5.5624-5.2225 3.9976-9.2844 17.408-12.186 12.186-7.5436 3.4816-6.383 1.7408-6.9633 6.9633-2.3211 12.766-7.5436 23.791-8.7041 15.087-16.248 13.927-6.383 2.3211-11.025 8.1238-10.445 6.1074-5.9727 5.4276z"
          sodipodi:nodetypes="cccccccccccccccccccccccccccccccccccccccccccccccccccc"
          style="stroke:#006680;stroke-width:.81238px;fill:url(#linearGradient4249)"
          inkscape:connector-curvature="0"
      />
    </g
    >
  </g
  >
  <metadata
    >
    <rdf:RDF
      >
      <cc:Work
        >
        <dc:format
          >image/svg+xml</dc:format
        >
        <dc:type
            rdf:resource="http://purl.org/dc/dcmitype/StillImage"
        />
        <cc:license
            rdf:resource="http://creativecommons.org/licenses/publicdomain/"
        />
        <dc:publisher
          >
          <cc:Agent
              rdf:about="http://openclipart.org/"
            >
            <dc:title
              >Openclipart</dc:title
            >
          </cc:Agent
          >
        </dc:publisher
        >
      </cc:Work
      >
      <cc:License
          rdf:about="http://creativecommons.org/licenses/publicdomain/"
        >
        <cc:permits
            rdf:resource="http://creativecommons.org/ns#Reproduction"
        />
        <cc:permits
            rdf:resource="http://creativecommons.org/ns#Distribution"
        />
        <cc:permits
            rdf:resource="http://creativecommons.org/ns#DerivativeWorks"
        />
      </cc:License
      >
    </rdf:RDF
    >
  </metadata
  >
</svg
>

""";

enum StoredSVGs {
  logo,
  tiger,
  rose,
  kid;

  String get svg {
    switch (this) {
      case StoredSVGs.logo:
        return logoString;
      case StoredSVGs.tiger:
        return tigerString;
      case StoredSVGs.rose:
        return singlePath;
      // return blueRoseString;
      case StoredSVGs.kid:
        return kidString;
    }
  }

  String get prefix {
    return toString().split('.').last[0].toUpperCase();
  }

  Color get color {
    switch (this) {
      case StoredSVGs.logo:
        return Colors.green;
      case StoredSVGs.tiger:
        return Colors.orange;
      case StoredSVGs.rose:
        return Colors.blue;
      case StoredSVGs.kid:
        return Colors.purple;
    }
  }
}
