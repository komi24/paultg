.class public final Lcom/google/android/gms/internal/c$b;
.super Lcom/google/android/gms/internal/mb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mb",
        "<",
        "Lcom/google/android/gms/internal/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eG:[Lcom/google/android/gms/internal/c$b;


# instance fields
.field public eH:[I

.field public eI:I

.field public eJ:Z

.field public eK:Z

.field public name:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mb;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$b;->e()Lcom/google/android/gms/internal/c$b;

    return-void
.end method

.method public static d()[Lcom/google/android/gms/internal/c$b;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/md;->amX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/c$b;

    sput-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/c$b;->eG:[Lcom/google/android/gms/internal/c$b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(IZ)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ma;->p(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->p(II)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ma;->a(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/ma;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/mf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$b;->c(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/mb;->c()I

    move-result v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ma;->r(II)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/ma;->eE(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/c$b;->name:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->r(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ma;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public c(Lcom/google/android/gms/internal/lz;)Lcom/google/android/gms/internal/c$b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$b;->a(Lcom/google/android/gms/internal/lz;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mi;->b(Lcom/google/android/gms/internal/lz;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nw()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nD()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lz;->ex(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nI()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/lz;->ez(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/lz;->ey(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/lz;->nA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public e()Lcom/google/android/gms/internal/c$b;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/mi;->ana:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    iput v1, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    iput v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->amY:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/c$b;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/c$b;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/md;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    iget v3, p1, Lcom/google/android/gms/internal/c$b;->eI:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/c$b;->name:I

    iget v3, p1, Lcom/google/android/gms/internal/c$b;->name:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$b;->eJ:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$b;->eK:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eH:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/md;->hashCode([I)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/c$b;->eI:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/c$b;->name:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eJ:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/c$b;->eK:Z

    if-eqz v3, :cond_2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->amU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_2
.end method
