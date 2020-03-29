const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0e1025", /* black   */
  [1] = "#6F6883", /* red     */
  [2] = "#8D7889", /* green   */
  [3] = "#A88B91", /* yellow  */
  [4] = "#AD9094", /* blue    */
  [5] = "#B3B8BE", /* magenta */
  [6] = "#86A5C2", /* cyan    */
  [7] = "#c1ccd7", /* white   */

  /* 8 bright colors */
  [8]  = "#878e96",  /* black   */
  [9]  = "#6F6883",  /* red     */
  [10] = "#8D7889", /* green   */
  [11] = "#A88B91", /* yellow  */
  [12] = "#AD9094", /* blue    */
  [13] = "#B3B8BE", /* magenta */
  [14] = "#86A5C2", /* cyan    */
  [15] = "#c1ccd7", /* white   */

  /* special colors */
  [256] = "#0e1025", /* background */
  [257] = "#c1ccd7", /* foreground */
  [258] = "#c1ccd7",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
