.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final kr:Lcom/google/android/gms/internal/au$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/au$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/au$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/au$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    return-object v0
.end method


# virtual methods
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p2, "customEventExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "networkExtras"    # Lcom/google/android/gms/ads/mediation/NetworkExtras;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p2, "networkExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/MediationAdapter;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/au$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V

    return-object v0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "birthday"    # Ljava/util/Date;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 6
    .param p1, "contentUrl"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Content URL must be non-null."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Content URL must be non-empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Content URL must not exceed %d in length.  Provided length was %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->i(Ljava/lang/String;)V

    return-object p0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "gender"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->e(I)V

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "tagForChildDirectedTreatment"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kr:Lcom/google/android/gms/internal/au$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au$a;->h(Z)V

    return-object p0
.end method
