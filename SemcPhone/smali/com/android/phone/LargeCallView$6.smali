.class Lcom/android/phone/LargeCallView$6;
.super Ljava/lang/Object;
.source "LargeCallView.java"

# interfaces
.implements Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;


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
    .line 351
    iput-object p1, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 3

    .prologue
    .line 355
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    const-string v1, "reject messages list is opened"

    #calls: Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/LargeCallView;->access$300(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/LargeCallView;->fireAction(ILjava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/android/phone/LargeCallView$6;->this$0:Lcom/android/phone/LargeCallView;

    const/16 v1, 0x1c

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/LargeCallView;->fireAction(ILjava/lang/Object;)V

    .line 358
    return-void
.end method
