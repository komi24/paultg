.class public abstract Lcom/google/appinventor/components/runtime/Sprite;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "Sprite.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_HEADING:I = 0x0

.field private static final DEFAULT_INTERVAL:I = 0x64

.field private static final DEFAULT_SPEED:F = 0.0f

.field private static final DEFAULT_VISIBLE:Z = true

.field private static final DEFAULT_Z:D = 1.0

.field private static final LOG_TAG:Ljava/lang/String; = "Sprite"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field protected final canvas:Lcom/google/appinventor/components/runtime/Canvas;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field protected heading:D

.field protected headingCos:D

.field protected headingRadians:D

.field protected headingSin:D

.field protected initialized:Z

.field protected interval:I

.field private final registeredCollisions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field protected speed:F

.field private final timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field protected userHeading:D

.field protected visible:Z

.field protected xLeft:D

.field protected yTop:D

.field protected zLayer:D


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V

    .line 140
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    .line 101
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 66
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 102
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 103
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    .line 106
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sprite constructor called with container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/google/appinventor/components/runtime/Canvas;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    .line 116
    new-instance v0, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-direct {v0, p0, v2, v3, p2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 119
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Interval(I)V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->Speed(F)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Sprite;->Visible(Z)V

    .line 124
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z(D)V

    .line 126
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 127
    return-void
.end method

.method public static colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 12
    .param p0, "sprite1"    # Lcom/google/appinventor/components/runtime/Sprite;
    .param p1, "sprite2"    # Lcom/google/appinventor/components/runtime/Sprite;

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    .line 848
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v0

    .line 849
    .local v0, "rect1":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {p1, v7}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 850
    .local v1, "rect2":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 865
    :cond_0
    :goto_0
    return v6

    .line 858
    :cond_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v2

    .local v2, "x":D
    :goto_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v8

    cmpg-double v8, v2, v8

    if-gtz v8, :cond_0

    .line 859
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v4

    .local v4, "y":D
    :goto_2
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v8

    cmpg-double v8, v4, v8

    if-gtz v8, :cond_3

    .line 860
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 861
    goto :goto_0

    .line 859
    :cond_2
    add-double/2addr v4, v10

    goto :goto_2

    .line 858
    :cond_3
    add-double/2addr v2, v10

    goto :goto_1
.end method

.method private final overEastEdge(I)Z
    .locals 4
    .param p1, "canvasWidth"    # I

    .prologue
    .line 763
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overNorthEdge()Z
    .locals 4

    .prologue
    .line 767
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overSouthEdge(I)Z
    .locals 4
    .param p1, "canvasHeight"    # I

    .prologue
    .line 771
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final overWestEdge()Z
    .locals 4

    .prologue
    .line 759
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Bounce(I)V
    .locals 14
    .param p1, "edge"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Makes this sprite bounce, as if off a wall.  For normal bouncing, the edge argument should be the one returned by EdgeReached."
    .end annotation

    .prologue
    const-wide v12, 0x4076800000000000L    # 360.0

    const-wide/16 v10, 0x0

    const-wide v8, 0x4070e00000000000L    # 270.0

    const-wide v6, 0x4056800000000000L    # 90.0

    const-wide v4, 0x4066800000000000L    # 180.0

    .line 541
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 544
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    rem-double v0, v2, v12

    .line 547
    .local v0, "normalizedAngle":D
    cmpg-double v2, v0, v10

    if-gez v2, :cond_0

    .line 548
    add-double/2addr v0, v12

    .line 553
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    cmpg-double v2, v0, v6

    if-ltz v2, :cond_2

    cmpl-double v2, v0, v8

    if-gtz v2, :cond_2

    :cond_1
    const/4 v2, -0x3

    if-ne p1, v2, :cond_4

    cmpl-double v2, v0, v6

    if-lez v2, :cond_4

    cmpg-double v2, v0, v8

    if-gez v2, :cond_4

    .line 557
    :cond_2
    sub-double v2, v4, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 571
    :cond_3
    :goto_0
    return-void

    .line 558
    :cond_4
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    cmpl-double v2, v0, v10

    if-lez v2, :cond_5

    cmpg-double v2, v0, v4

    if-ltz v2, :cond_6

    :cond_5
    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    cmpl-double v2, v0, v4

    if-lez v2, :cond_7

    .line 561
    :cond_6
    sub-double v2, v12, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0

    .line 562
    :cond_7
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    cmpl-double v2, v0, v10

    if-lez v2, :cond_8

    cmpg-double v2, v0, v6

    if-ltz v2, :cond_b

    :cond_8
    const/4 v2, -0x4

    if-ne p1, v2, :cond_9

    cmpl-double v2, v0, v6

    if-lez v2, :cond_9

    cmpg-double v2, v0, v4

    if-ltz v2, :cond_b

    :cond_9
    const/4 v2, -0x2

    if-ne p1, v2, :cond_a

    cmpl-double v2, v0, v4

    if-lez v2, :cond_a

    cmpg-double v2, v0, v8

    if-ltz v2, :cond_b

    :cond_a
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    cmpl-double v2, v0, v8

    if-lez v2, :cond_3

    .line 569
    :cond_b
    add-double v2, v4, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0
.end method

.method public CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const-string/jumbo v0, "Sprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Collision between sprites "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " re-registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 391
    const-string/jumbo v0, "CollidedWith"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 1
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Dragged(FFFFFF)V
    .locals 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "prevX"    # F
    .param p4, "prevY"    # F
    .param p5, "currentX"    # F
    .param p6, "currentY"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 415
    const-string/jumbo v0, "Dragged"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method public EdgeReached(I)V
    .locals 4
    .param p1, "edge"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the sprite reaches an edge of the screen. If Bounce is then called with that edge, the sprite will appear to bounce off of the edge it reached.  Edge here is represented as an integer that indicates one of eight directions north(1), northeast(2), east(3), southeast(4), south (-1), southwest(-2), west(-3), and northwest(-4)."
    .end annotation

    .prologue
    .line 430
    if-eqz p1, :cond_0

    const/4 v0, -0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to Sprite.EdgeReached()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1
    const-string/jumbo v0, "EdgeReached"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 173
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Controls whether the sprite moves when its speed is non-zero."
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public Flung(FFFFFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "speed"    # F
    .param p4, "heading"    # F
    .param p5, "xvel"    # F
    .param p6, "yvel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 489
    const-string/jumbo v0, "Flung"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method public Heading()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the sprite\'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen."
    .end annotation

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    return-wide v0
.end method

.method public Heading(D)V
    .locals 2
    .param p1, "userHeading"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    .line 190
    neg-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    .line 191
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    .line 192
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    .line 193
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    .line 195
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 196
    return-void
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 145
    return-void
.end method

.method public Interval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The interval in milliseconds at which the sprite\'s position is updated.  For example, if the interval is 50 and the speed is 10, then the sprite will move 10 pixels every 50 milliseconds."
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public Interval(I)V
    .locals 1
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    .line 236
    return-void
.end method

.method public MoveIntoBounds()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->moveIntoBounds(II)V

    .line 599
    return-void
.end method

.method public MoveTo(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the sprite so that its left top corner is at the specfied x and y coordinates."
    .end annotation

    .prologue
    .line 611
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 612
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 613
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 614
    return-void
.end method

.method public NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a pair of sprites are no longer colliding."
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const-string/jumbo v0, "Sprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Collision between sprites "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " removed but not present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 457
    const-string/jumbo v0, "NoLongerCollidingWith"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    return-void
.end method

.method public PointInDirection(DD)V
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turns the sprite to point towards the point with coordinates as (x, y)."
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    sub-double v0, p3, v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v2

    sub-double v2, p1, v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 648
    return-void
.end method

.method public PointTowards(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6
    .param p1, "target"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turns the sprite to point towards a designated target sprite. The new heading will be parallel to the line joining the centerpoints of the two sprites."
    .end annotation

    .prologue
    .line 626
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 631
    return-void
.end method

.method public Speed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "he speed at which the sprite moves.  The sprite moves this many pixels every interval."
    .end annotation

    .prologue
    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return v0
.end method

.method public Speed(F)V
    .locals 0
    .param p1, "speed"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 250
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    .line 251
    return-void
.end method

.method public TouchDown(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 515
    const-string/jumbo v0, "TouchDown"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method public TouchUp(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 502
    const-string/jumbo v0, "TouchUp"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    return-void
.end method

.method public Touched(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 469
    const-string/jumbo v0, "Touched"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    return-void
.end method

.method public Visible(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 290
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 291
    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "True if the sprite is visible."
    .end annotation

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    return v0
.end method

.method public X()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the left edge of the sprite, increasing as the sprite moves to the right."
    .end annotation

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    return-wide v0
.end method

.method public X(D)V
    .locals 4
    .param p1, "x"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 306
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 307
    return-void
.end method

.method public Y()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the top of the sprite, increasing as the sprite moves down."
    .end annotation

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    return-wide v0
.end method

.method public Y(D)V
    .locals 4
    .param p1, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 315
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 316
    return-void
.end method

.method public Z()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How the sprite should be layered relative to other sprits, with higher-numbered layers in front of lower-numbered layers."
    .end annotation

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    return-wide v0
.end method

.method public Z(D)V
    .locals 1
    .param p1, "layer"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 338
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 340
    return-void
.end method

.method public alarm()V
    .locals 2

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->updateCoordinates()V

    .line 919
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 921
    :cond_0
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 4
    .param p1, "qx"    # D
    .param p3, "qy"    # D

    .prologue
    .line 903
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;
    .locals 13
    .param p1, "border"    # I

    .prologue
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 833
    new-instance v0, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v1

    int-to-double v3, p1

    sub-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v3

    int-to-double v5, p1

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v5, v7

    sub-double/2addr v5, v11

    int-to-double v7, p1

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v9

    int-to-double v9, v9

    add-double/2addr v7, v9

    sub-double/2addr v7, v11

    int-to-double v9, p1

    add-double/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    return-object v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdge()I
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdge(II)I

    move-result v0

    goto :goto_0
.end method

.method protected hitEdge(II)I
    .locals 6
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v3

    .line 779
    .local v3, "west":Z
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    .line 780
    .local v1, "north":Z
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v0

    .line 781
    .local v0, "east":Z
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v2

    .line 784
    .local v2, "south":Z
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 785
    const/4 v4, 0x0

    .line 818
    :goto_0
    return v4

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 794
    if-eqz v3, :cond_3

    .line 795
    if-eqz v1, :cond_1

    .line 796
    const/4 v4, -0x4

    goto :goto_0

    .line 797
    :cond_1
    if-eqz v2, :cond_2

    .line 798
    const/4 v4, -0x2

    goto :goto_0

    .line 800
    :cond_2
    const/4 v4, -0x3

    goto :goto_0

    .line 804
    :cond_3
    if-eqz v0, :cond_6

    .line 805
    if-eqz v1, :cond_4

    .line 806
    const/4 v4, 0x2

    goto :goto_0

    .line 807
    :cond_4
    if-eqz v2, :cond_5

    .line 808
    const/4 v4, 0x4

    goto :goto_0

    .line 810
    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    .line 814
    :cond_6
    if-eqz v1, :cond_7

    .line 815
    const/4 v4, 0x1

    goto :goto_0

    .line 817
    :cond_7
    if-eqz v2, :cond_8

    .line 818
    const/4 v4, -0x1

    goto :goto_0

    .line 821
    :cond_8
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/AssertionFailure;

    const-string/jumbo v5, "Unreachable code hit in Sprite.hitEdge()"

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/errors/AssertionFailure;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 10
    .param p1, "rect"    # Lcom/google/appinventor/components/runtime/util/BoundingBox;

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    .line 876
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v0

    .line 877
    .local v0, "rect1":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 891
    :cond_0
    :goto_0
    return v5

    .line 884
    :cond_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v1

    .local v1, "x":D
    :goto_1
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v6

    cmpg-double v6, v1, v6

    if-gez v6, :cond_0

    .line 885
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v3

    .local v3, "y":D
    :goto_2
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v6

    cmpg-double v6, v3, v6

    if-gez v6, :cond_3

    .line 886
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 887
    const/4 v5, 0x1

    goto :goto_0

    .line 885
    :cond_2
    add-double/2addr v3, v8

    goto :goto_2

    .line 884
    :cond_3
    add-double/2addr v1, v8

    goto :goto_1
.end method

.method protected final moveIntoBounds(II)V
    .locals 5
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 700
    const/4 v0, 0x0

    .line 706
    .local v0, "moved":Z
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 710
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 711
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 712
    const/4 v0, 0x1

    .line 724
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    if-le v1, p2, :cond_5

    .line 728
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 729
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 730
    const/4 v0, 0x1

    .line 741
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 742
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 744
    :cond_2
    return-void

    .line 714
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 715
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 716
    const/4 v0, 0x1

    goto :goto_0

    .line 717
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    sub-int v1, p1, v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 719
    const/4 v0, 0x1

    goto :goto_0

    .line 732
    :cond_5
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 733
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 734
    const/4 v0, 0x1

    goto :goto_1

    .line 735
    :cond_6
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    sub-int v1, p2, v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 737
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 942
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 943
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 935
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected varargs postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sprite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Sprite$1;-><init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method protected registerChange()V
    .locals 2

    .prologue
    .line 663
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-nez v1, :cond_0

    .line 665
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 673
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdge()I

    move-result v0

    .line 669
    .local v0, "edge":I
    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReached(I)V

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0
.end method

.method protected updateCoordinates()V
    .locals 6

    .prologue
    .line 751
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 752
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 753
    return-void
.end method
