.class Lcom/android/phone/NetworkSetting$1;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 146
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 208
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 148
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->restoreDataTrafficSetting()V
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$100(Lcom/android/phone/NetworkSetting;)V

    .line 149
    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v5, v4, v6}, Lcom/android/phone/NetworkSetting;->access$200(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    goto :goto_0

    .line 154
    :sswitch_1
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$302(Z)Z

    .line 155
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 156
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 161
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 162
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v5, "network selection failed !"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$500(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    .line 166
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$600(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/SomcNetworkPreference;

    invoke-virtual {v4}, Lcom/android/phone/SomcNetworkPreference;->unsetCurrentNetwork()V

    .line 168
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;
    invoke-static {v4, v6}, Lcom/android/phone/NetworkSetting;->access$602(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 170
    :cond_2
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #setter for: Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;
    invoke-static {v4, v6}, Lcom/android/phone/NetworkSetting;->access$702(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Landroid/preference/Preference;

    goto :goto_0

    .line 172
    :cond_3
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v5, "network selection succeeded !"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 174
    :cond_4
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$800(Lcom/android/phone/NetworkSetting;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/OperatorInfo;

    .line 176
    .local v2, ni:Lcom/android/internal/telephony/OperatorInfo;
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->updateCurrentNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z
    invoke-static {v4, v2}, Lcom/android/phone/NetworkSetting;->access$900(Lcom/android/phone/NetworkSetting;Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1000(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 184
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #ni:Lcom/android/internal/telephony/OperatorInfo;
    :sswitch_2
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const-string v5, "network reselected automatically !"

    #calls: Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    .line 185
    :cond_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v3, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 186
    .local v3, ss:Landroid/telephony/ServiceState;
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1100(Lcom/android/phone/NetworkSetting;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 187
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 188
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 190
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1200(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #getter for: Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-static {v5}, Lcom/android/phone/NetworkSetting;->access$1300(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v5, 0x0

    #setter for: Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z
    invoke-static {v4, v5}, Lcom/android/phone/NetworkSetting;->access$1102(Lcom/android/phone/NetworkSetting;Z)Z

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_6

    const-string v4, "phone"

    const-string v5, "Failed to start network query in NetworkSettings handleMessage."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_7
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->updateNetworkFromServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v4, v3}, Lcom/android/phone/NetworkSetting;->access$1400(Lcom/android/phone/NetworkSetting;Landroid/telephony/ServiceState;)V

    goto/16 :goto_0

    .line 204
    .end local v3           #ss:Landroid/telephony/ServiceState;
    :sswitch_3
    iget-object v4, p0, Lcom/android/phone/NetworkSetting$1;->this$0:Lcom/android/phone/NetworkSetting;

    #calls: Lcom/android/phone/NetworkSetting;->updateNetworkSearchModeButton()V
    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->access$1500(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
    .end sparse-switch
.end method
