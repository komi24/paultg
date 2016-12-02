.class public final Lcom/google/appinventor/components/runtime/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static calculatePixels(Landroid/view/View;I)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "sizeInDP"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 203
    return-void
.end method

.method public static setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 187
    return-void
.end method

.method public static setChildHeightForHorizontalLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 58
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 59
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 68
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 71
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 75
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 62
    .restart local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 65
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 73
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string/jumbo v2, "ViewUtil"

    const-string/jumbo v3, "The view does not have linear layout parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForTableLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 162
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/TableRow$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 163
    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    .line 164
    .local v1, "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 175
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 179
    .end local v1    # "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    :goto_1
    return-void

    .line 166
    .restart local v1    # "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 169
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 177
    .end local v1    # "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    :cond_0
    const-string/jumbo v2, "ViewUtil"

    const-string/jumbo v3, "The view does not have table layout parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForVerticalLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 118
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 130
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 133
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 137
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 121
    .restart local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 122
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 125
    :pswitch_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 126
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 135
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string/jumbo v2, "ViewUtil"

    const-string/jumbo v3, "The view does not have linear layout parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForHorizontalLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 32
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 33
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 44
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 45
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 52
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 36
    .restart local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 37
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 40
    :pswitch_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 41
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 50
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string/jumbo v2, "ViewUtil"

    const-string/jumbo v3, "The view does not have linear layout parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 34
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForTableLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 141
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/TableRow$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 142
    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    .line 143
    .local v1, "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 151
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 154
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 158
    .end local v1    # "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    :goto_1
    return-void

    .line 145
    .restart local v1    # "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 148
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 156
    .end local v1    # "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    :cond_0
    const-string/jumbo v2, "ViewUtil"

    const-string/jumbo v3, "The view does not have table layout parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForVerticalLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 81
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 82
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 91
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 98
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 85
    .restart local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 96
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const-string/jumbo v2, "ViewUtil"

    const-string/jumbo v3, "The view does not have linear layout parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 198
    return-void
.end method
