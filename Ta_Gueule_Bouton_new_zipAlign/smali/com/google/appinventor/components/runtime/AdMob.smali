.class public final Lcom/google/appinventor/components/runtime/AdMob;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "AdMob.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AdMob component allows you to monetize your app. You must have a valid AdMob account and AdUnitId that can be obtained from http://www.google.com/AdMob . If your id is invalid, the AdMob banner will not display on the emulator or the device.Warning: Make sure you\'re in test mode during development to avoid being disabled for clicking your own ads. "
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-play-services.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_NETWORK_STATE,android.permission.ACCESS_WIFI_STATE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdMob"


# instance fields
.field private TAG:Ljava/lang/String;

.field private adEnabled:Z

.field public adFailedToLoadCode:Ljava/lang/String;

.field public adFailedToLoadMessage:Ljava/lang/String;

.field public adUnitID:Ljava/lang/String;

.field private adView:Lcom/google/android/gms/ads/AdView;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private isTestMode:Z

.field public onAdLoadedMsg:Landroid/content/Context;

.field public targetAge:I

.field private targetForChildren:Z

.field private targetGender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 47
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/AdMob;->isTestMode:Z

    .line 52
    iput v2, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetAge:I

    .line 54
    const-string/jumbo v1, "ALL"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetGender:Ljava/lang/String;

    .line 55
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/AdMob;->adEnabled:Z

    .line 57
    const-string/jumbo v1, "AdMob"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetForChildren:Z

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdMob;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 63
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 65
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 66
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    .line 67
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/appinventor/components/runtime/AdMob$AdListenerPage;-><init>(Lcom/google/appinventor/components/runtime/AdMob;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 68
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setBackgroundColor(I)V

    .line 73
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v0, "localLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 79
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/AdMob;->adEnabled:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/AdMob;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/AdMob;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AdMob;->getErrorReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateBasedOnAge(I)Ljava/util/Date;
    .locals 5
    .param p1, "age"    # I

    .prologue
    .line 339
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 340
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x1

    mul-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 342
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 344
    .local v1, "date":Ljava/util/Date;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The calculated date based on age of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v1
.end method

.method private getErrorReason(I)Ljava/lang/String;
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 353
    const-string/jumbo v0, ""

    .line 354
    .local v0, "errorReason":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got add error reason of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v0

    .line 356
    :pswitch_0
    const-string/jumbo v0, "Something happened internally; for instance, an invalid response was received from the ad server."

    .line 357
    goto :goto_0

    .line 359
    :pswitch_1
    const-string/jumbo v0, "The ad request was invalid; for instance, the ad unit ID was incorrect"

    .line 360
    goto :goto_0

    .line 362
    :pswitch_2
    const-string/jumbo v0, "The ad request was unsuccessful due to network connectivity"

    .line 363
    goto :goto_0

    .line 365
    :pswitch_3
    const-string/jumbo v0, "The ad request was successful, but no ad was returned due to lack of ad inventory"

    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user is about to return to the application after clicking on an ad"
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "AdClosed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public AdCollapsed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 85
    const-string/jumbo v0, "AdCollapsed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public AdEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, device that will receive test ads. You should utilize this property during development to avoid generating false impressions"
    .end annotation

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adEnabled:Z

    .line 397
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdMob;->onResume()V

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdMob;->onPause()V

    goto :goto_0
.end method

.method public AdEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adEnabled:Z

    return v0
.end method

.method public AdExpanded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 90
    const-string/jumbo v0, "AdExpanded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 95
    const-string/jumbo v0, "AdFailedToLoad"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public AdLeftApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad leaves the application (e.g., to go to the browser)"
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v0, "AdLeftApplication"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received"
    .end annotation

    .prologue
    .line 110
    const-string/jumbo v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adUnitID:Ljava/lang/String;

    return-object v0
.end method

.method public AdUnitID(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AD-UNIT-ID"
        editorType = "string"
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adUnitID:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adUnitID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdMob;->LoadAd()V

    .line 124
    return-void
.end method

.method public DestroyAd()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Destroys the ad"
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdMob;->onDestroy()V

    .line 129
    return-void
.end method

.method public LoadAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 233
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adEnabled:Z

    if-nez v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The test mode status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/AdMob;->isTestMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->isTestMode:Z

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Test mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AdMob;->adUnitID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Serving real ads; production non-Test mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 249
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetForChildren:Z

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetGender:Ljava/lang/String;

    const-string/jumbo v2, "female"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 255
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 256
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Targeting females"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetAge:I

    if-lez v1, :cond_4

    .line 264
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Targeting calendar age of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetAge:I

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/AdMob;->getDateBasedOnAge(I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetAge:I

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AdMob;->getDateBasedOnAge(I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 269
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_0

    .line 257
    :cond_5
    const-string/jumbo v1, "gender"

    const-string/jumbo v2, "male"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Targeting males"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_1
.end method

.method public PauseAd()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses delivery of ads"
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdMob;->onPause()V

    .line 180
    return-void
.end method

.method public PublisherId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdMob;->AdUnitID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public PublisherId(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisherId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AD_UNIT_ID"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the AdMob Publisher Id"
        userVisible = false
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AdMob;->AdUnitID(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public ResumeAd()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes delivery of ads"
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdMob;->onResume()V

    .line 185
    return-void
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 189
    iget v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetAge:I

    return v0
.end method

.method public TargetAge(I)V
    .locals 0
    .param p1, "targetAge"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Leave 0 for targeting ALL ages"
    .end annotation

    .prologue
    .line 195
    iput p1, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetAge:I

    .line 196
    return-void
.end method

.method public TargetForChildren(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicate whether you want Google to treat your content as child-directed when you make an ad request. Info here: https://developers.google.com/mobile-ads-sdk/docs/admob/android/targeting#child-directed_setting"
    .end annotation

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetForChildren:Z

    .line 208
    return-void
.end method

.method public TargetForChildren()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetForChildren:Z

    return v0
.end method

.method public TargetGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ALL"
        editorType = "gender_options"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdMob;->targetGender:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public TestMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Use this to enable test mode"
        userVisible = true
    .end annotation

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdMob;->isTestMode:Z

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flipping the test mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/AdMob;->isTestMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->isTestMode:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 274
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "AdMob is onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adEnabled:Z

    .line 279
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 282
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "AdMob is onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 287
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 290
    const-string/jumbo v0, "AdMobListener"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMob;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 298
    :cond_0
    return-void
.end method
