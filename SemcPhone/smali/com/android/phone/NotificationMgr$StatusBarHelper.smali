.class Lcom/android/phone/NotificationMgr$StatusBarHelper;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusBarHelper"
.end annotation


# instance fields
.field private mCurrentState:I

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    .line 199
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method

.method private updateStatusBar(ZI)V
    .locals 3
    .parameter "isEnabled"
    .parameter "param"

    .prologue
    .line 264
    if-eqz p1, :cond_1

    .line 265
    iget v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    .line 269
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating status bar state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 271
    return-void

    .line 267
    :cond_1
    iget v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    goto :goto_0
.end method


# virtual methods
.method collapse()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 278
    return-void
.end method

.method public enableExpandedView(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 219
    const/high16 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 220
    return-void
.end method

.method public enableNavigationBarBack(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 257
    const/high16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 258
    return-void
.end method

.method public enableNavigationBarHome(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 249
    const/high16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 250
    return-void
.end method

.method public enableNavigationBarRecent(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 241
    const/high16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 242
    return-void
.end method

.method public enableSystemBarNavigation(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 231
    const/high16 v0, 0x160

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 234
    return-void
.end method
