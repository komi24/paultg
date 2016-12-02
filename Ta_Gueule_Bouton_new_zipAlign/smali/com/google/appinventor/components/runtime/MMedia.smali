.class public Lcom/google/appinventor/components/runtime/MMedia;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "MMedia.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "MMedia component allows you to monetize your app. You must have a valid App id that can be obtained from http://www.MillennialMedia.com. If App id is invalid, the banner will not display on the emulator or the device."
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "MMSDK.jar,google-play-services.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECORD_AUDIO,android.permission.INTERNET,permission.ACCESS_NETWORK_STATE,android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MMedia$AdListener;
    }
.end annotation


# static fields
.field private static final BANNER_AD_HEIGHT:I = 0x32

.field private static final BANNER_AD_WIDTH:I = 0x140

.field private static final IAB_LEADERBOARD_HEIGHT:I = 0x5a

.field private static final IAB_LEADERBOARD_WIDTH:I = 0x2d8

.field private static final MED_BANNER_HEIGHT:I = 0x3c

.field private static final MED_BANNER_WIDTH:I = 0x1e0


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private adView:Lcom/millennialmedia/android/MMAdView;

.field private appId:Ljava/lang/String;

.field placementHeight:I

.field placementWidth:I

.field request:Lcom/millennialmedia/android/MMRequest;

.field targetAge:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 24
    const-string/jumbo v1, "MMedia"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->LOG_TAG:Ljava/lang/String;

    .line 25
    const-string/jumbo v1, "0"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->targetAge:Ljava/lang/String;

    .line 37
    const/16 v1, 0x140

    iput v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementWidth:I

    .line 38
    const/16 v1, 0x32

    iput v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementHeight:I

    .line 41
    const-string/jumbo v1, "AppID"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->appId:Ljava/lang/String;

    .line 51
    new-instance v1, Lcom/millennialmedia/android/MMAdView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    .line 53
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MMedia;->determineAdSize()V

    .line 55
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementWidth:I

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 56
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementHeight:I

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 58
    iget v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementWidth:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MMedia;->Width(I)V

    .line 59
    iget v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementHeight:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MMedia;->Height(I)V

    .line 61
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "localLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MMedia;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 72
    new-instance v1, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->request:Lcom/millennialmedia/android/MMRequest;

    .line 76
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MMedia;->request:Lcom/millennialmedia/android/MMRequest;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 78
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    new-instance v2, Lcom/google/appinventor/components/runtime/MMedia$AdListener;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/MMedia$AdListener;-><init>(Lcom/google/appinventor/components/runtime/MMedia;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 102
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/MMedia;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/MMedia;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private determineAdSize()V
    .locals 3

    .prologue
    const/16 v2, 0x2d8

    const/16 v1, 0x1e0

    .line 131
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MMedia;->canFit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iput v2, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementWidth:I

    .line 133
    const/16 v0, 0x5a

    iput v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementHeight:I

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MMedia;->canFit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iput v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementWidth:I

    .line 136
    const/16 v0, 0x3c

    iput v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->placementHeight:I

    goto :goto_0
.end method


# virtual methods
.method public AdDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 187
    const-string/jumbo v0, "AdDismissed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public AdExpanded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 193
    const-string/jumbo v0, "AdExpanded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .param p1, "errMsg"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 199
    const-string/jumbo v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 205
    const-string/jumbo v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method public AppID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public AppID(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AppID"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MMedia;->appId:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->request:Lcom/millennialmedia/android/MMRequest;

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->getDefaultAdId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->targetAge:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->request:Lcom/millennialmedia/android/MMRequest;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->targetAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setAge(Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MMedia;->request:Lcom/millennialmedia/android/MMRequest;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 127
    return-void
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->targetAge:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public TargetAge(I)V
    .locals 3
    .param p1, "targetAge"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Leave 0 for targeting ALL ages"
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->targetAge:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->request:Lcom/millennialmedia/android/MMRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMRequest;->setAge(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method protected canFit(I)Z
    .locals 5
    .param p1, "adWidth"    # I

    .prologue
    const/4 v2, 0x1

    .line 140
    int-to-float v3, p1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MMedia;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 141
    .local v0, "adWidthPx":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MMedia;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 142
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v3, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MMedia;->adView:Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 178
    :cond_0
    return-void
.end method
