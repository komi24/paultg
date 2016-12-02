.class public Lcom/google/appinventor/components/runtime/util/TextViewUtil;
.super Ljava/lang/Object;
.source "TextViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getFontSize(Landroid/widget/TextView;)F
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public static getText(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextHyperlinked(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static setAlignment(Landroid/widget/TextView;IZ)V
    .locals 3
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "alignment"    # I
    .param p2, "centerVertically"    # Z

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 44
    :pswitch_0
    const/4 v0, 0x3

    .line 55
    .local v0, "horizontalGravity":I
    :goto_0
    if-eqz p2, :cond_0

    const/16 v1, 0x10

    .line 56
    .local v1, "verticalGravity":I
    :goto_1
    or-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 58
    return-void

    .line 48
    .end local v0    # "horizontalGravity":I
    .end local v1    # "verticalGravity":I
    :pswitch_1
    const/4 v0, 0x1

    .line 49
    .restart local v0    # "horizontalGravity":I
    goto :goto_0

    .line 52
    .end local v0    # "horizontalGravity":I
    :pswitch_2
    const/4 v0, 0x5

    .restart local v0    # "horizontalGravity":I
    goto :goto_0

    .line 55
    :cond_0
    const/16 v1, 0x30

    goto :goto_1

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setBackgroundColor(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "argb"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 71
    return-void
.end method

.method public static setEnabled(Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "enabled"    # Z

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 92
    return-void
.end method

.method public static setFontSize(Landroid/widget/TextView;F)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "size"    # F

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 113
    return-void
.end method

.method public static setFontTypeface(Landroid/widget/TextView;IZZ)V
    .locals 3
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "typeface"    # I
    .param p2, "bold"    # Z
    .param p3, "italic"    # Z

    .prologue
    .line 129
    packed-switch p1, :pswitch_data_0

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 134
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 150
    .local v1, "tf":Landroid/graphics/Typeface;
    :goto_0
    const/4 v0, 0x0

    .line 151
    .local v0, "style":I
    if-eqz p2, :cond_0

    .line 152
    or-int/lit8 v0, v0, 0x1

    .line 154
    :cond_0
    if-eqz p3, :cond_1

    .line 155
    or-int/lit8 v0, v0, 0x2

    .line 157
    :cond_1
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 159
    return-void

    .line 138
    .end local v0    # "style":I
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 139
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 142
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 143
    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 146
    .end local v1    # "tf":Landroid/graphics/Typeface;
    :pswitch_3
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .restart local v1    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static setMarque(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "enabled"    # Z

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 219
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 220
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 221
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 223
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 224
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 225
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 180
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "argb"    # I

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 236
    return-void
.end method

.method public static setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 240
    return-void
.end method

.method public static setTextHyperlinked(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 191
    .local v0, "spannableString":Landroid/text/SpannableString;
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 194
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 195
    return-void
.end method
