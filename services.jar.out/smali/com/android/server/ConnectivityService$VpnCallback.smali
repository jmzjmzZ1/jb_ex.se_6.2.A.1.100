.class public Lcom/android/server/ConnectivityService$VpnCallback;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 3078
    iput-object p1, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3079
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3076
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public override(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3082
    .local p1, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, searchDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 3083
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 3130
    :goto_0
    return-void

    .line 3088
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3089
    .local v1, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3092
    .local v0, address:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3093
    :catch_0
    move-exception v7

    goto :goto_1

    .line 3097
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3098
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    goto :goto_0

    .line 3103
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3104
    .local v2, buffer:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    .line 3105
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3106
    .local v4, domain:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3109
    .end local v4           #domain:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3112
    .local v5, domains:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3113
    .local v3, changed:Z
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3114
    :try_start_1
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const-string v9, "VPN"

    const-string v10, "VPN"

    #calls: Lcom/android/server/ConnectivityService;->updateDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z
    invoke-static {v7, v9, v10, v1, v5}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    .line 3115
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v7, v9}, Lcom/android/server/ConnectivityService;->access$2702(Lcom/android/server/ConnectivityService;Z)Z

    .line 3116
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3117
    if-eqz v3, :cond_4

    .line 3118
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->bumpDns()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)V

    .line 3122
    :cond_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3123
    :try_start_2
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v7, v9}, Lcom/android/server/ConnectivityService;->access$3002(Lcom/android/server/ConnectivityService;Z)Z

    .line 3124
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3125
    iget-object v7, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x0

    #calls: Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v7, v9}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    .line 3127
    :cond_5
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 3116
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 3133
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3135
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$2702(Lcom/android/server/ConnectivityService;Z)Z

    .line 3136
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3138
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3139
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3140
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$3002(Lcom/android/server/ConnectivityService;Z)Z

    .line 3141
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3142
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    .line 3144
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3145
    return-void

    .line 3138
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3144
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
