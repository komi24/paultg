.class public Lcom/google/appinventor/components/runtime/util/ScalingUtilities;
.super Ljava/lang/Object;
.source "ScalingUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static calculateDstRect(IIIILcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "scalingLogic"    # Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    .prologue
    const/4 v4, 0x0

    .line 154
    sget-object v2, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    if-ne p4, v2, :cond_1

    .line 155
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 156
    .local v1, "srcAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 158
    .local v0, "dstAspect":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 159
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, p2

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v4, v4, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 164
    .end local v0    # "dstAspect":F
    .end local v1    # "srcAspect":F
    :goto_0
    return-object v2

    .line 161
    .restart local v0    # "dstAspect":F
    .restart local v1    # "srcAspect":F
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, p3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v4, v4, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 164
    .end local v0    # "dstAspect":F
    .end local v1    # "srcAspect":F
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static calculateSampleSize(IIIILcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;)I
    .locals 4
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "scalingLogic"    # Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    .prologue
    .line 91
    sget-object v2, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    if-ne p4, v2, :cond_1

    .line 92
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 93
    .local v1, "srcAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 95
    .local v0, "dstAspect":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 96
    div-int v2, p0, p2

    .line 107
    :goto_0
    return v2

    .line 98
    :cond_0
    div-int v2, p1, p3

    goto :goto_0

    .line 101
    .end local v0    # "dstAspect":F
    .end local v1    # "srcAspect":F
    :cond_1
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 102
    .restart local v1    # "srcAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 104
    .restart local v0    # "dstAspect":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    .line 105
    div-int v2, p1, p3

    goto :goto_0

    .line 107
    :cond_2
    div-int v2, p0, p2

    goto :goto_0
.end method

.method public static calculateSrcRect(IIIILcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;
    .locals 9
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "scalingLogic"    # Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    .prologue
    const/4 v8, 0x0

    .line 124
    sget-object v6, Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;->CROP:Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    if-ne p4, v6, :cond_1

    .line 125
    int-to-float v6, p0

    int-to-float v7, p1

    div-float v2, v6, v7

    .line 126
    .local v2, "srcAspect":F
    int-to-float v6, p2

    int-to-float v7, p3

    div-float v0, v6, v7

    .line 128
    .local v0, "dstAspect":F
    cmpl-float v6, v2, v0

    if-lez v6, :cond_0

    .line 129
    int-to-float v6, p1

    mul-float/2addr v6, v0

    float-to-int v5, v6

    .line 130
    .local v5, "srcRectWidth":I
    sub-int v6, p0, v5

    div-int/lit8 v4, v6, 0x2

    .line 131
    .local v4, "srcRectLeft":I
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v4, v5

    invoke-direct {v6, v4, v8, v7, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 138
    .end local v0    # "dstAspect":F
    .end local v2    # "srcAspect":F
    .end local v4    # "srcRectLeft":I
    .end local v5    # "srcRectWidth":I
    :goto_0
    return-object v6

    .line 133
    .restart local v0    # "dstAspect":F
    .restart local v2    # "srcAspect":F
    :cond_0
    int-to-float v6, p0

    div-float/2addr v6, v0

    float-to-int v3, v6

    .line 134
    .local v3, "srcRectHeight":I
    sub-int v6, p1, v3

    div-int/lit8 v1, v6, 0x2

    .line 135
    .local v1, "scrRectTop":I
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v1, v3

    invoke-direct {v6, v8, v1, p0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 138
    .end local v0    # "dstAspect":F
    .end local v1    # "scrRectTop":I
    .end local v2    # "srcAspect":F
    .end local v3    # "srcRectHeight":I
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "unscaledBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I
    .param p3, "scalingLogic"    # Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/ScalingUtilities;->calculateSrcRect(IIIILcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;

    move-result-object v3

    .line 53
    .local v3, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/ScalingUtilities;->calculateDstRect(IIIILcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Rect;

    move-result-object v1

    .line 54
    .local v1, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 55
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 58
    return-object v2
.end method

.method public static decodeResource(Landroid/content/res/Resources;IIILcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I
    .param p4, "scalingLogic"    # Lcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 33
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 34
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 35
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/ScalingUtilities;->calculateSampleSize(IIIILcom/google/appinventor/components/runtime/util/ScalingUtilities$ScalingLogic;)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 37
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    .local v1, "unscaledBitmap":Landroid/graphics/Bitmap;
    return-object v1
.end method
