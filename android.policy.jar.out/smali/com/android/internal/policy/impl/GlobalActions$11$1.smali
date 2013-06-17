.class Lcom/android/internal/policy/impl/GlobalActions$11$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$11;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/GlobalActions$11;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$11;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$11$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$11$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$11;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$111(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .local v1, s2:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .end local v0           #context:Landroid/content/Context;
    .end local v1           #s2:Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    sget v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$11$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$11;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions;->bootCommand()V

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    sget v3, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #s2:Ljava/lang/String;
    goto :goto_0

    .end local v1           #s2:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;

    sget v3, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->rebootMode:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #s2:Ljava/lang/String;
    goto :goto_0
.end method
