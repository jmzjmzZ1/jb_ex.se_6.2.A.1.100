.class Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;
.super Ljava/lang/Object;
.source "SmallAppScrollView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartSmallAppConnection"
.end annotation


# instance fields
.field private mCompName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter "compName"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;->mCompName:Landroid/content/ComponentName;

    .line 141
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 149
    invoke-static {p2}, Lcom/sony/smallapp/ISmallAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sony/smallapp/ISmallAppManager;

    move-result-object v2

    .line 151
    .local v2, manager:Lcom/sony/smallapp/ISmallAppManager;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sony.smallapp.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 153
    if-eqz v2, :cond_0

    .line 154
    invoke-interface {v2, v1}, Lcom/sony/smallapp/ISmallAppManager;->startApplication(Landroid/content/Intent;)V

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$StartSmallAppConnection;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    #getter for: Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->access$000(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 145
    return-void
.end method
