const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#2e3436", /* black   */
  [1] = "#cc0000", /* red     */
  [2] = "#4e9a06", /* green   */
  [3] = "#c4a000", /* yellow  */
  [4] = "#3465a4", /* blue    */
  [5] = "#75507b", /* magenta */
  [6] = "#06989a", /* cyan    */
  [7] = "#d3d7cf", /* white   */

  /* 8 bright colors */
  [8]  = "#555753",  /* black   */
  [9]  = "#cc0000",  /* red     */
  [10] = "#4e9a06", /* green   */
  [11] = "#c4a000", /* yellow  */
  [12] = "#3465a4", /* blue    */
  [13] = "#75507b", /* magenta */
  [14] = "#06989a", /* cyan    */
  [15] = "#d3d7cf", /* white   */

  /* special colors */
  [256] = "#000000", /* background */
  [257] = "#babdb6", /* foreground */
  [258] = "#ef2929",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
