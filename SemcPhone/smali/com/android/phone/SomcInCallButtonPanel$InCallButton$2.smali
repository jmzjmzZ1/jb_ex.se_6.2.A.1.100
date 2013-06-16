.class Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;
.super Ljava/lang/Object;
.source "SomcInCallButtonPanel.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallButtonPanel$InCallButton;-><init>(Landroid/view/View;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 590
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->isButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setFocused()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$900(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallButtonPanel$InCallButton$2;->this$0:Lcom/android/phone/SomcInCallButtonPanel$InCallButton;

    #calls: Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->setNormal()V
    invoke-static {v0}, Lcom/android/phone/SomcInCallButtonPanel$InCallButton;->access$400(Lcom/android/phone/SomcInCallButtonPanel$InCallButton;)V

    goto :goto_0
.end method
