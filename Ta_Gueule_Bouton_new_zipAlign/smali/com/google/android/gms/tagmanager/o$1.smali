.class Lcom/google/android/gms/tagmanager/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/o;->lm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeP:Lcom/google/android/gms/tagmanager/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$1;->aeP:Lcom/google/android/gms/tagmanager/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bJ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$1;->aeP:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/o;->bJ(Ljava/lang/String;)V

    return-void
.end method

.method public lj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o$1;->aeP:Lcom/google/android/gms/tagmanager/o;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ll()V
    .locals 1

    const-string/jumbo v0, "Refresh ignored: container loaded as default only."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    return-void
.end method
