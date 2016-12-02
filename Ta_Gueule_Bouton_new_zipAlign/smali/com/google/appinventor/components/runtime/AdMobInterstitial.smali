.class public Lcom/google/appinventor/components/runtime/AdMobInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "AdMobInterstitial.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "An interstitial ad is a full-page ad. AdMobInterstitial component allows you to monetize your app. You must have a valid AdMob account and AdUnitId that can be obtained from http://www.google.com/AdMob . If your id is invalid, the AdMobInterstitial will not display on the emulator or the device. Warning: Make sure you\'re in test mode during development to avoid being disabled for clicking your own ads. "
    iconName = "images/admobInterstitial.png"
    nonVisible = true
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
        Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdMobInterstitial"


# instance fields
.field private adEnabled:Z

.field public adFailedToLoadMessage:Ljava/lang/String;

.field public adUnitId:Ljava/lang/String;

.field private enableTesting:Z

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field public onAdLoadedMsg:Landroid/content/Context;

.field public targetAge:I

.field private targetForChildren:Z

.field private targetGender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 45
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 35
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->enableTesting:Z

    .line 37
    iput v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetAge:I

    .line 38
    const-string/jumbo v0, "ALL"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetGender:Ljava/lang/String;

    .line 39
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adEnabled:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetForChildren:Z

    .line 47
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/AdMobInterstitial$AdListenerPage;-><init>(Lcom/google/appinventor/components/runtime/AdMobInterstitial;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 50
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adEnabled:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/AdMobInterstitial;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/AdMobInterstitial;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->getErrorReason(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDateBasedOnAge(I)Ljava/util/Date;
    .locals 5
    .param p1, "age"    # I

    .prologue
    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x1

    mul-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 198
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 200
    .local v1, "date":Ljava/util/Date;
    const-string/jumbo v2, "AdMobInterstitial"

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

    .line 202
    return-object v1
.end method

.method private getErrorReason(I)Ljava/lang/String;
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 209
    const-string/jumbo v0, ""

    .line 210
    .local v0, "errorReason":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    const-string/jumbo v1, "AdMobInterstitial"

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

    .line 229
    return-object v0

    .line 212
    :pswitch_0
    const-string/jumbo v0, "Something happened internally; for instance, an invalid response was received from the ad server."

    .line 214
    goto :goto_0

    .line 216
    :pswitch_1
    const-string/jumbo v0, "The ad request was invalid; for instance, the ad unit ID was incorrect"

    .line 217
    goto :goto_0

    .line 219
    :pswitch_2
    const-string/jumbo v0, "The ad request was unsuccessful due to network connectivity"

    .line 220
    goto :goto_0

    .line 222
    :pswitch_3
    const-string/jumbo v0, "The ad request was successful, but no ad was returned due to lack of ad inventory"

    goto :goto_0

    .line 210
    nop

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
    .line 67
    const-string/jumbo v0, "AdClosed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 68
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
    .line 236
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adEnabled:Z

    .line 237
    return-void
.end method

.method public AdEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adEnabled:Z

    return v0
.end method

.method public AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. message will display the reason for why the ad failed"
    .end annotation

    .prologue
    .line 57
    const-string/jumbo v0, "AdFailedToLoad"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public AdFailedToShow(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an an attempt was made to display the ad, but the ad was not ready to display"
    .end annotation

    .prologue
    .line 62
    const-string/jumbo v0, "AdFailedToShow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public AdLeftApplication()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad leaves the application (e.g., to go to the browser). "
    .end annotation

    .prologue
    .line 73
    const-string/jumbo v0, "AdLeftApplication"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received"
    .end annotation

    .prologue
    .line 78
    const-string/jumbo v0, "AdLoaded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public AdUnitID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public AdUnitID(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AD-UNIT-ID"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adUnitId:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->LoadAd()V

    .line 95
    return-void
.end method

.method public EnableTesting(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "For debugging / development purposes flag all ad requests as tests, but set to false for production builds"
        userVisible = true
    .end annotation

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->enableTesting:Z

    .line 101
    const-string/jumbo v0, "AdMobInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flipping the test mode to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->enableTesting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public EnableTesting()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->enableTesting:Z

    return v0
.end method

.method public LoadAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 144
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adEnabled:Z

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string/jumbo v1, "AdMobInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The test mode status is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->enableTesting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->enableTesting:Z

    if-eqz v1, :cond_2

    .line 151
    const-string/jumbo v1, "AdMobInterstitial"

    const-string/jumbo v2, "Test mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string/jumbo v1, "AdMobInterstitial"

    const-string/jumbo v2, "Serving real ads; production non-Test mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 160
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetForChildren:Z

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    .line 165
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetGender:Ljava/lang/String;

    const-string/jumbo v2, "female"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 166
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 167
    const-string/jumbo v1, "AdMobInterstitial"

    const-string/jumbo v2, "Targeting females"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    :goto_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetAge:I

    if-lez v1, :cond_5

    .line 175
    const-string/jumbo v1, "AdMobInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Targeting calendar age of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetAge:I

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->getDateBasedOnAge(I)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetAge:I

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->getDateBasedOnAge(I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_0

    .line 168
    :cond_6
    const-string/jumbo v1, "gender"

    const-string/jumbo v2, "male"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    const-string/jumbo v1, "AdMobInterstitial"

    const-string/jumbo v2, "Targeting males"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;

    goto :goto_1
.end method

.method public ShowInterstitialAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will show the Interstitial Ad"
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string/jumbo v0, "Interstitial ad was not ready to be shown. Make sure you have set AdUnitId and you invoke this after LoadAd"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adFailedToLoadMessage:Ljava/lang/String;

    .line 288
    const-string/jumbo v0, "AdMobInterstitial"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adFailedToLoadMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->adFailedToLoadMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetAge:I

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
    .line 119
    iput p1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetAge:I

    .line 120
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
    .line 138
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetForChildren:Z

    .line 139
    return-void
.end method

.method public TargetForChildren()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetForChildren:Z

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
    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdMobInterstitial;->targetGender:Ljava/lang/String;

    .line 127
    return-void
.end method
