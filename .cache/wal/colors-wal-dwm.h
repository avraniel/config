static const char norm_fg[] = "#d3d7cf";
static const char norm_bg[] = "#2e3436";
static const char norm_border[] = "#555753";

static const char sel_fg[] = "#d3d7cf";
static const char sel_bg[] = "#4e9a06";
static const char sel_border[] = "#d3d7cf";

static const char urg_fg[] = "#d3d7cf";
static const char urg_bg[] = "#cc0000";
static const char urg_border[] = "#cc0000";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
