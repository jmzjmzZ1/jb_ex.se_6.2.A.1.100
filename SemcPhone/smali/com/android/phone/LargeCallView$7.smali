.class Lcom/android/phone/LargeCallView$7;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LargeCallView;->initMsgListComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LargeCallView;


# direct methods
.method constructor <init>(Lcom/android/phone/LargeCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/phone/LargeCallView$7;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    .prologue
    .line 366
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView$7;->this$0:Lcom/android/phone/LargeCallView;

    const-string v1, "reject messages list is closed"

    #calls: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/LargeCallView;->access$300(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$7;->this$0:Lcom/android/phone/LargeCallView;

    const/16 v1, 0x1c

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/LargeCallView;->fireAction(ILjava/lang/Object;)V

    .line 368
    return-void
.end method
