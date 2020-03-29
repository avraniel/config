static const char norm_fg[] = "#c1ccd7";
static const char norm_bg[] = "#0e1025";
static const char norm_border[] = "#878e96";

static const char sel_fg[] = "#c1ccd7";
static const char sel_bg[] = "#8D7889";
static const char sel_border[] = "#c1ccd7";

static const char urg_fg[] = "#c1ccd7";
static const char urg_bg[] = "#6F6883";
static const char urg_border[] = "#6F6883";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
