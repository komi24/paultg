.class public Lcom/google/appinventor/components/runtime/util/CurlMesh;
.super Ljava/lang/Object;
.source "CurlMesh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/CurlMesh$1;,
        Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;,
        Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;,
        Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    }
.end annotation


# static fields
.field private static BACKFACE_ALPHA:D = 0.0

.field private static final DRAW_CURL_POSITION:Z = false

.field private static final DRAW_POLYGON_OUTLINES:Z = false

.field private static final DRAW_SHADOW:Z = true

.field private static final DRAW_TEXTURE:Z = true

.field private static final FRONTFACE_ALPHA:D = 1.0

.field private static final SHADOW_INNER_COLOR:[F

.field private static final SHADOW_OUTER_COLOR:[F


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapB:Landroid/graphics/Bitmap;

.field private mColors:Ljava/nio/FloatBuffer;

.field private mCurlPositionLines:Ljava/nio/FloatBuffer;

.field private mCurlPositionLinesCount:I

.field private mDropShadowCount:I

.field private mDropShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;",
            ">;"
        }
    .end annotation
.end field

.field private mFlipTexture:Z

.field private mIntersections:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCurlSplits:I

.field private mNewTex:Z

.field private mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

.field private mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfShadowCount:I

.field private mSelfShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowColors:Ljava/nio/FloatBuffer;

.field private mShadowVertices:Ljava/nio/FloatBuffer;

.field private mTempShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;",
            ">;"
        }
    .end annotation
.end field

.field private mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;",
            ">;"
        }
    .end annotation
.end field

.field private mTexCoords:Ljava/nio/FloatBuffer;

.field private mTextureIds:[I

.field private mTextureRect:Landroid/graphics/RectF;

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mVerticesCountBack:I

.field private mVerticesCountFront:I

.field private mWidthAux:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 41
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_INNER_COLOR:[F

    .line 42
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_OUTER_COLOR:[F

    .line 46
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->BACKFACE_ALPHA:D

    return-void

    .line 41
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
    .end array-data

    .line 42
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 14
    .param p1, "maxCurlSplits"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    .line 79
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 84
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    .line 89
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mNewTex:Z

    .line 114
    const/4 v8, 0x1

    if-ge p1, v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    .line 116
    new-instance v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    add-int/lit8 v9, p1, 0x2

    invoke-direct {v8, p0, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    .line 117
    new-instance v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    const/4 v9, 0x7

    invoke-direct {v8, p0, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    .line 118
    new-instance v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    const/4 v9, 0x4

    invoke-direct {v8, p0, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    .line 119
    new-instance v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    const/4 v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mIntersections:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    .line 120
    new-instance v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    const/16 v9, 0xb

    invoke-direct {v8, p0, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    .line 121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v8, 0xb

    if-ge v1, v8, :cond_1

    .line 122
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    new-instance v9, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    invoke-direct {v9, p0}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_0
    move v8, p1

    .line 114
    goto :goto_0

    .line 126
    .restart local v1    # "i":I
    :cond_1
    new-instance v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    iget v9, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    add-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    .line 128
    new-instance v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    iget v9, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    add-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    .line 130
    new-instance v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    iget v9, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    add-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v9, 0x2

    invoke-direct {v8, p0, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;I)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    .line 132
    const/4 v1, 0x0

    :goto_2
    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x2

    if-ge v1, v8, :cond_2

    .line 133
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    new-instance v9, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;Lcom/google/appinventor/components/runtime/util/CurlMesh$1;)V

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 139
    :cond_2
    const/4 v1, 0x0

    :goto_3
    const/4 v8, 0x4

    if-ge v1, v8, :cond_3

    .line 140
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    new-instance v9, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    invoke-direct {v9, p0}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;-><init>(Lcom/google/appinventor/components/runtime/util/CurlMesh;)V

    aput-object v9, v8, v1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 144
    :cond_3
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    iput-wide v12, v11, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    iput-wide v12, v10, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    iput-wide v12, v9, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    iput-wide v12, v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    .line 145
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    iput-wide v12, v11, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    iput-wide v12, v10, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    iput-wide v12, v9, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    iput-wide v12, v8, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    .line 159
    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v3, v8, 0x6

    .line 160
    .local v3, "maxVerticesCount":I
    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 161
    .local v7, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    .line 163
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    mul-int/lit8 v8, v3, 0x2

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 168
    .local v6, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    .line 170
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    mul-int/lit8 v8, v3, 0x4

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 174
    .local v0, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    .line 176
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    iget v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x2

    mul-int/lit8 v2, v8, 0x2

    .line 180
    .local v2, "maxShadowVerticesCount":I
    mul-int/lit8 v8, v2, 0x4

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 182
    .local v4, "scbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    .line 184
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    mul-int/lit8 v8, v2, 0x3

    mul-int/lit8 v8, v8, 0x4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 188
    .local v5, "sibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    .line 190
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    const/4 v8, 0x0

    iput v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowCount:I

    iput v8, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowCount:I

    .line 194
    return-void
.end method

.method private addVertex(Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;)V
    .locals 3
    .param p1, "vertex"    # Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 862
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 863
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 864
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mColor:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 865
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mColor:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 866
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mColor:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 867
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 869
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 870
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    iget-wide v1, p1, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 872
    return-void
.end method

.method private getIntersections(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;[[ID)Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;
    .locals 12
    .param p2, "lineIndices"    # [[I
    .param p3, "scanX"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;",
            ">;[[ID)",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array",
            "<",
            "Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 879
    .local p1, "vertices":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mIntersections:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->clear()V

    .line 882
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_1

    .line 883
    aget-object v6, p2, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 884
    .local v4, "v1":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    aget-object v6, p2, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p1, v6}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 887
    .local v5, "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    iget-wide v6, v4, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    cmpl-double v6, v6, p3

    if-lez v6, :cond_0

    iget-wide v6, v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    cmpg-double v6, v6, p3

    if-gez v6, :cond_0

    .line 890
    iget-wide v6, v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    sub-double v6, p3, v6

    iget-wide v8, v4, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    iget-wide v10, v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    sub-double/2addr v8, v10

    div-double v0, v6, v8

    .line 891
    .local v0, "c":D
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 892
    .local v3, "n":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->set(Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;)V

    .line 893
    iput-wide p3, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 894
    iget-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    iget-wide v8, v4, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    iget-wide v10, v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    sub-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    .line 896
    iget-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    iget-wide v8, v4, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    iget-wide v10, v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    sub-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    .line 897
    iget-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    iget-wide v8, v4, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    iget-wide v10, v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    sub-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    .line 900
    iget-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    iget-wide v8, v4, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    iget-wide v10, v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    sub-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    .line 901
    iget-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    iget-wide v8, v4, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    iget-wide v10, v5, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    sub-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    .line 903
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mIntersections:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    invoke-virtual {v6, v3}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 882
    .end local v0    # "c":D
    .end local v3    # "n":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 906
    .end local v4    # "v1":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .end local v5    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_1
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mIntersections:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    return-object v6
.end method

.method private getNextHighestPO2(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 913
    add-int/lit8 p1, p1, -0x1

    .line 914
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 915
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 916
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 917
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 918
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 919
    shr-int/lit8 v0, p1, 0x20

    or-int/2addr p1, v0

    .line 920
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public static setALPHA(D)V
    .locals 0
    .param p0, "value"    # D

    .prologue
    .line 54
    sput-wide p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->BACKFACE_ALPHA:D

    .line 55
    return-void
.end method

.method private declared-synchronized setTexCoords(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 928
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    .line 929
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p2

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    .line 930
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    float-to-double v1, p1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    .line 931
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    float-to-double v1, p4

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    .line 932
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    float-to-double v1, p3

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    .line 933
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    float-to-double v1, p2

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D

    .line 934
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    float-to-double v1, p3

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexX:D

    .line 935
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    float-to-double v1, p4

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mTexY:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    monitor-exit p0

    return-void

    .line 928
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized curl(Landroid/graphics/PointF;Landroid/graphics/PointF;D)V
    .locals 41
    .param p1, "curlPos"    # Landroid/graphics/PointF;
    .param p2, "curlDir"    # Landroid/graphics/PointF;
    .param p3, "radius"    # D

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 238
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    .line 239
    .local v7, "curlAngle":D
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v33, v0

    const/16 v34, 0x0

    cmpl-float v33, v33, v34

    if-lez v33, :cond_0

    neg-double v7, v7

    .line 246
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->clear()V

    .line 248
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/16 v33, 0x4

    move/from16 v0, v33

    if-ge v15, v0, :cond_4

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->remove(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 250
    .local v28, "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    move-object/from16 v33, v0

    aget-object v33, v33, v15

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->set(Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;)V

    .line 251
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v33, v0

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v33

    move-wide/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->translate(DD)V

    .line 252
    neg-double v0, v7

    move-wide/from16 v33, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->rotateZ(D)V

    .line 253
    const/16 v18, 0x0

    .line 254
    .local v18, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 256
    .local v31, "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v35, v0

    cmpl-double v33, v33, v35

    if-lez v33, :cond_2

    .line 263
    .end local v31    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v18

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(ILjava/lang/Object;)V

    .line 248
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 259
    .restart local v31    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_2
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v35, v0

    cmpl-double v33, v33, v35

    if-nez v33, :cond_3

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v33, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v35, v0

    cmpl-double v33, v33, v35

    if-gtz v33, :cond_1

    .line 254
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 275
    .end local v18    # "j":I
    .end local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .end local v31    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_4
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [[I

    move-object/from16 v19, v0

    const/16 v33, 0x0

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_0

    aput-object v34, v19, v33

    const/16 v33, 0x1

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_1

    aput-object v34, v19, v33

    const/16 v33, 0x2

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_2

    aput-object v34, v19, v33

    const/16 v33, 0x3

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_3

    aput-object v34, v19, v33

    .line 279
    .local v19, "lines":[[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 280
    .local v29, "v0":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 281
    .restart local v31    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x3

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 282
    .local v32, "v3":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v35, v0

    sub-double v33, v33, v35

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v35, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v37, v0

    sub-double v35, v35, v37

    mul-double v33, v33, v35

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v35, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v37, v0

    sub-double v35, v35, v37

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v37, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v39, v0

    sub-double v37, v37, v39

    mul-double v35, v35, v37

    add-double v33, v33, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 285
    .local v11, "dist2":D
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v35, v0

    sub-double v33, v33, v35

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v35, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v37, v0

    sub-double v35, v35, v37

    mul-double v33, v33, v35

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v35, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v37, v0

    sub-double v35, v35, v37

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v37, v0

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v39, v0

    sub-double v37, v37, v39

    mul-double v35, v35, v37

    add-double v33, v33, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 288
    .local v13, "dist3":D
    cmpl-double v33, v11, v13

    if-lez v33, :cond_5

    .line 289
    const/16 v33, 0x1

    aget-object v33, v19, v33

    const/16 v34, 0x1

    const/16 v35, 0x3

    aput v35, v33, v34

    .line 290
    const/16 v33, 0x2

    aget-object v33, v19, v33

    const/16 v34, 0x1

    const/16 v35, 0x2

    aput v35, v33, v34

    .line 294
    :cond_5
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountBack:I

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->clear()V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->clear()V

    .line 304
    const-wide v33, 0x400921fb54442d18L    # Math.PI

    mul-double v9, v33, p3

    .line 307
    .local v9, "curlLength":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->clear()V

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    move/from16 v33, v0

    if-lez v33, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const-wide/16 v34, 0x0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 311
    :cond_6
    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v15, v0, :cond_7

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    neg-double v0, v9

    move-wide/from16 v34, v0

    int-to-double v0, v15

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mMaxCurlSplits:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v34, v34, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 311
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 317
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v35, 0x3

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v35, v0

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    sub-double v35, v35, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    add-double v23, v33, v35

    .line 323
    .local v23, "scanXmax":D
    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v15, v0, :cond_19

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Double;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    .line 328
    .local v25, "scanXmin":D
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 335
    .restart local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    cmpl-double v33, v33, v25

    if-ltz v33, :cond_8

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    cmpg-double v33, v33, v23

    if-gtz v33, :cond_8

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->remove(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 338
    .local v20, "n":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->set(Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    move-wide/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->getIntersections(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;[[ID)Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-result-object v17

    .line 348
    .local v17, "intersections":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v33, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v35, v0

    cmpl-double v33, v33, v35

    if-lez v33, :cond_9

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 328
    .end local v17    # "intersections":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    .end local v20    # "n":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_8
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 353
    .restart local v17    # "intersections":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    .restart local v20    # "n":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_a

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 231
    .end local v7    # "curlAngle":D
    .end local v9    # "curlLength":D
    .end local v11    # "dist2":D
    .end local v13    # "dist3":D
    .end local v15    # "i":I
    .end local v17    # "intersections":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    .end local v18    # "j":I
    .end local v19    # "lines":[[I
    .end local v20    # "n":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .end local v23    # "scanXmax":D
    .end local v25    # "scanXmin":D
    .end local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .end local v29    # "v0":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .end local v31    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .end local v32    # "v3":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :catchall_0
    move-exception v33

    monitor-exit p0

    throw v33

    .line 361
    .restart local v7    # "curlAngle":D
    .restart local v9    # "curlLength":D
    .restart local v11    # "dist2":D
    .restart local v13    # "dist3":D
    .restart local v15    # "i":I
    .restart local v17    # "intersections":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    .restart local v18    # "j":I
    .restart local v19    # "lines":[[I
    .restart local v20    # "n":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .restart local v23    # "scanXmax":D
    .restart local v25    # "scanXmin":D
    .restart local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .restart local v29    # "v0":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .restart local v31    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .restart local v32    # "v3":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V

    goto :goto_5

    .line 368
    .end local v17    # "intersections":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    .end local v20    # "n":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .end local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRotatedVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->getIntersections(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;[[ID)Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-result-object v17

    .line 374
    .restart local v17    # "intersections":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 377
    const/16 v33, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 378
    .local v30, "v1":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    const/16 v33, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    check-cast v31, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 379
    .restart local v31    # "v2":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v33, v0

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v35, v0

    cmpg-double v33, v33, v35

    if-gez v33, :cond_e

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 397
    .end local v30    # "v1":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    if-lez v33, :cond_18

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->remove(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    .line 399
    .restart local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(Ljava/lang/Object;)V

    .line 402
    if-nez v15, :cond_11

    .line 403
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    move/from16 v33, v0

    if-eqz v33, :cond_10

    sget-wide v33, Lcom/google/appinventor/components/runtime/util/CurlMesh;->BACKFACE_ALPHA:D

    :goto_7
    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    .line 439
    :goto_8
    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->rotateZ(D)V

    .line 440
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v33

    move-wide/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->translate(DD)V

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->addVertex(Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;)V

    .line 444
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmpl-double v33, v33, v35

    if-lez v33, :cond_d

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    cmpg-double v33, v33, p3

    if-gtz v33, :cond_d

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;

    .line 446
    .local v27, "sv":Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosX:D

    .line 447
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosY:D

    .line 448
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosZ:D

    .line 449
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v33, v33, v35

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraX:D

    .line 450
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v33, v33, v35

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v35, v0

    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraY:D

    .line 451
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    div-double v33, v33, p3

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraColor:D

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    div-int/lit8 v16, v33, 0x2

    .line 453
    .local v16, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(ILjava/lang/Object;)V

    .line 456
    .end local v16    # "idx":I
    .end local v27    # "sv":Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
    :cond_d
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    cmpl-double v33, v33, p3

    if-lez v33, :cond_c

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->remove(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;

    .line 458
    .restart local v27    # "sv":Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosX:D

    .line 459
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosY:D

    .line 460
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosZ:D

    .line 461
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    sub-double v33, v33, p3

    const-wide/high16 v35, 0x4008000000000000L    # 3.0

    div-double v33, v33, v35

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    move-wide/from16 v35, v0

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraX:D

    .line 462
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    sub-double v33, v33, p3

    const-wide/high16 v35, 0x4008000000000000L    # 3.0

    div-double v33, v33, v35

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraY:D

    move-wide/from16 v35, v0

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraY:D

    .line 463
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    sub-double v33, v33, p3

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    mul-double v35, v35, p3

    div-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraColor:D

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    div-int/lit8 v16, v33, 0x2

    .line 465
    .restart local v16    # "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->add(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 383
    .end local v16    # "idx":I
    .end local v27    # "sv":Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
    .end local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    .restart local v30    # "v1":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mOutputVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V

    goto/16 :goto_6

    .line 385
    .end local v30    # "v1":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_f
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    if-eqz v33, :cond_c

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTempVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->addAll(Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;)V

    goto/16 :goto_6

    .line 403
    .restart local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_10
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_7

    .line 407
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mScanLines:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-eq v15, v0, :cond_12

    const-wide/16 v33, 0x0

    cmpl-double v33, v9, v33

    if-nez v33, :cond_14

    .line 408
    :cond_12
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v33, v0

    add-double v33, v33, v9

    move-wide/from16 v0, v33

    neg-double v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 409
    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    mul-double v33, v33, p3

    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    .line 410
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    neg-double v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    .line 412
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    move/from16 v33, v0

    if-eqz v33, :cond_13

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    :goto_9
    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountBack:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountBack:I

    goto/16 :goto_8

    .line 412
    :cond_13
    sget-wide v33, Lcom/google/appinventor/components/runtime/util/CurlMesh;->BACKFACE_ALPHA:D

    goto :goto_9

    .line 420
    :cond_14
    const-wide v33, 0x400921fb54442d18L    # Math.PI

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    move-wide/from16 v35, v0

    div-double v35, v35, v9

    mul-double v21, v33, v35

    .line 421
    .local v21, "rotY":D
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    mul-double v33, v33, p3

    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 422
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v33

    mul-double v33, v33, p3

    sub-double v33, p3, v33

    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    .line 423
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    move-wide/from16 v33, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPenumbraX:D

    .line 425
    const-wide v33, 0x3fb99999a0000000L    # 0.10000000149011612

    const-wide v35, 0x3fecccccc0000000L    # 0.8999999761581421

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v37

    const-wide/high16 v39, 0x3ff0000000000000L    # 1.0

    add-double v37, v37, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v37

    mul-double v35, v35, v37

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mColor:D

    .line 427
    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosZ:D

    move-wide/from16 v33, v0

    cmpl-double v33, v33, p3

    if-ltz v33, :cond_16

    .line 428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    move/from16 v33, v0

    if-eqz v33, :cond_15

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    :goto_a
    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountBack:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountBack:I

    goto/16 :goto_8

    .line 428
    :cond_15
    sget-wide v33, Lcom/google/appinventor/components/runtime/util/CurlMesh;->BACKFACE_ALPHA:D

    goto :goto_a

    .line 432
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    move/from16 v33, v0

    if-eqz v33, :cond_17

    sget-wide v33, Lcom/google/appinventor/components/runtime/util/CurlMesh;->BACKFACE_ALPHA:D

    :goto_b
    move-wide/from16 v0, v33

    move-object/from16 v2, v28

    iput-wide v0, v2, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    .line 434
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    goto/16 :goto_8

    .line 432
    :cond_17
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    goto :goto_b

    .line 470
    .end local v21    # "rotY":D
    .end local v28    # "v":Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;
    :cond_18
    move-wide/from16 v23, v25

    .line 323
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 473
    .end local v17    # "intersections":Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;, "Lcom/google/appinventor/components/runtime/util/CurlMesh$Array<Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;>;"
    .end local v18    # "j":I
    .end local v25    # "scanXmin":D
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 483
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowCount:I

    .line 485
    const/4 v15, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v15, v0, :cond_1b

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;

    .line 487
    .restart local v27    # "sv":Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosX:D

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosY:D

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosZ:D

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosX:D

    move-wide/from16 v34, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraX:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosY:D

    move-wide/from16 v34, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraY:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosZ:D

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 493
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_d
    const/16 v33, 0x4

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1a

    .line 494
    sget-object v33, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_OUTER_COLOR:[F

    aget v33, v33, v18

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    sget-object v35, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_INNER_COLOR:[F

    aget v35, v35, v18

    sget-object v36, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_OUTER_COLOR:[F

    aget v36, v36, v18

    sub-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraColor:D

    move-wide/from16 v37, v0

    mul-double v35, v35, v37

    add-double v5, v33, v35

    .line 497
    .local v5, "color":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    double-to-float v0, v5

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 493
    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 499
    .end local v5    # "color":D
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    sget-object v34, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_OUTER_COLOR:[F

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 500
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowCount:I

    .line 485
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_c

    .line 502
    .end local v18    # "j":I
    .end local v27    # "sv":Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
    :cond_1b
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowCount:I

    .line 503
    const/4 v15, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v15, v0, :cond_1d

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowVertices:Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Lcom/google/appinventor/components/runtime/util/CurlMesh$Array;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;

    .line 505
    .restart local v27    # "sv":Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosX:D

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosY:D

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosZ:D

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosX:D

    move-wide/from16 v34, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraX:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosY:D

    move-wide/from16 v34, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraY:D

    move-wide/from16 v36, v0

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPosZ:D

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 511
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_f
    const/16 v33, 0x4

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1c

    .line 512
    sget-object v33, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_OUTER_COLOR:[F

    aget v33, v33, v18

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    sget-object v35, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_INNER_COLOR:[F

    aget v35, v35, v18

    sget-object v36, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_OUTER_COLOR:[F

    aget v36, v36, v18

    sub-float v35, v35, v36

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;->mPenumbraColor:D

    move-wide/from16 v37, v0

    mul-double v35, v35, v37

    add-double v5, v33, v35

    .line 515
    .restart local v5    # "color":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    double-to-float v0, v5

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 511
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 517
    .end local v5    # "color":D
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    sget-object v34, Lcom/google/appinventor/components/runtime/util/CurlMesh;->SHADOW_OUTER_COLOR:[F

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 518
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowCount:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowCount:I

    .line 503
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_e

    .line 520
    .end local v18    # "j":I
    .end local v27    # "sv":Lcom/google/appinventor/components/runtime/util/CurlMesh$ShadowVertex;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 275
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public declared-synchronized draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    if-nez v2, :cond_0

    .line 532
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    .line 533
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 535
    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 536
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 538
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 540
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 542
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00    # 33071.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 545
    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 546
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 548
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 550
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 552
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00    # 33071.0f

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 556
    :cond_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mNewTex:Z

    if-eqz v2, :cond_1

    .line 557
    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 558
    const/16 v2, 0xde1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 561
    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 562
    const/16 v2, 0xde1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 565
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mNewTex:Z

    .line 569
    :cond_1
    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 584
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 589
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 590
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 591
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 592
    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 593
    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 594
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowCount:I

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 595
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 596
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 601
    const v2, 0x8078

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 602
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 604
    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 607
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 608
    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 611
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 612
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 618
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 619
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 620
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 621
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 622
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 623
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 626
    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 639
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 640
    .local v1, "backStartIdx":I
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountBack:I

    add-int/2addr v2, v3

    sub-int v0, v2, v1

    .line 642
    .local v0, "backCount":I
    const/4 v2, 0x5

    invoke-interface {p1, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 645
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 646
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 647
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 648
    const/4 v2, 0x5

    invoke-interface {p1, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 649
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 650
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 654
    const v2, 0x8078

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 655
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 678
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 679
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 680
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 681
    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowColors:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 682
    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mShadowVertices:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 683
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowCount:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowCount:I

    invoke-interface {p1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 685
    const v2, 0x8076

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 686
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 689
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    .line 530
    .end local v0    # "backCount":I
    .end local v1    # "backStartIdx":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 697
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 698
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 700
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 703
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->addVertex(Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountFront:I

    .line 706
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVerticesCountBack:I

    .line 707
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 708
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mColors:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 710
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTexCoords:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 713
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mSelfShadowCount:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mDropShadowCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 697
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resetTexture()V
    .locals 1

    .prologue
    .line 724
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 20
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "bitmapB"    # Landroid/graphics/Bitmap;

    .prologue
    .line 733
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 734
    .local v15, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 738
    .local v7, "h":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->getNextHighestPO2(I)I

    move-result v11

    .line 739
    .local v11, "newW":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->getNextHighestPO2(I)I

    move-result v9

    .line 741
    .local v9, "newH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 743
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    .line 746
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 748
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    .line 752
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v11, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    .line 753
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 754
    .local v4, "c":Landroid/graphics/Canvas;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 756
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 757
    const/16 p1, 0x0

    .line 759
    if-eqz p2, :cond_2

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 762
    .local v16, "w2":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 766
    .local v8, "h2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->getNextHighestPO2(I)I

    move-result v12

    .line 767
    .local v12, "newW2":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->getNextHighestPO2(I)I

    move-result v10

    .line 770
    .local v10, "newH2":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v12, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    .line 771
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 773
    .local v5, "c2":Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 774
    .local v6, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 775
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 776
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 778
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 779
    const/16 p2, 0x0

    .line 785
    .end local v5    # "c2":Landroid/graphics/Canvas;
    .end local v6    # "flipHorizontalMatrix":Landroid/graphics/Matrix;
    .end local v8    # "h2":I
    .end local v10    # "newH2":I
    .end local v12    # "newW2":I
    .end local v16    # "w2":I
    :goto_0
    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mWidthAux:I

    .line 786
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mNewTex:Z

    .line 788
    int-to-float v0, v15

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v18, v0

    div-float v13, v17, v18

    .line 789
    .local v13, "texX":F
    int-to-float v0, v7

    move/from16 v17, v0

    int-to-float v0, v9

    move/from16 v18, v0

    div-float v14, v17, v18

    .line 790
    .local v14, "texY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 791
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 792
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v13, v1, v2, v14}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setTexCoords(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    :goto_1
    monitor-exit p0

    return-void

    .line 782
    .end local v13    # "texX":F
    .end local v14    # "texY":F
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 733
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v7    # "h":I
    .end local v9    # "newH":I
    .end local v11    # "newW":I
    .end local v15    # "w":I
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 794
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v7    # "h":I
    .restart local v9    # "newH":I
    .restart local v11    # "newW":I
    .restart local v13    # "texX":F
    .restart local v14    # "texY":F
    .restart local v15    # "w":I
    :cond_3
    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v13, v14}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setTexCoords(FFFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setFlipTexture(Z)V
    .locals 5
    .param p1, "flipTexture"    # Z

    .prologue
    .line 827
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    .line 829
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setTexCoords(FFFF)V

    .line 837
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 838
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v3, v1, v0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mFlipTexture:Z

    if-eqz v1, :cond_1

    sget-wide v1, Lcom/google/appinventor/components/runtime/util/CurlMesh;->BACKFACE_ALPHA:D

    :goto_2
    iput-wide v1, v3, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mAlpha:D

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 833
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mTextureRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/CurlMesh;->setTexCoords(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 827
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 838
    .restart local v0    # "i":I
    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 841
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/RectF;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 847
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v0, v0, v3

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 848
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v0, v0, v3

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    .line 849
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v0, v0, v4

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 850
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v0, v0, v4

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    .line 851
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v0, v0, v5

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 852
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v0, v0, v5

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    .line 853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v0, v0, v6

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosX:D

    .line 854
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mRectangle:[Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;

    aget-object v0, v0, v6

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/util/CurlMesh$Vertex;->mPosY:D

    .line 855
    return-void
.end method

.method public swapSheet()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 808
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    .line 809
    .local v0, "aux":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    .line 810
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 812
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 813
    .local v3, "flipHorizontalMatrix":Landroid/graphics/Matrix;
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 814
    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mWidthAux:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 815
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 817
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    .line 818
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    invoke-direct {v2, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 819
    .local v2, "c2":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mBitmapB:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 820
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/util/CurlMesh;->mNewTex:Z

    .line 821
    return-void
.end method
