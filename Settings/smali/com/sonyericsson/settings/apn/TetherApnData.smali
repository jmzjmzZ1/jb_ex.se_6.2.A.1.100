.class public Lcom/sonyericsson/settings/apn/TetherApnData;
.super Ljava/lang/Object;
.source "TetherApnData.java"


# instance fields
.field private mApnData:[Ljava/lang/String;

.field private mIsTetherDunRequired:Z

.field private mIsTetherDunValid:Z

.field private mTypeArrayAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 4
    .parameter "isTetherDunRequired"
    .parameter "apnDataString"

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunRequired:Z

    .line 23
    iput-boolean v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunRequired:Z

    .line 52
    move-object v0, p2

    .line 55
    .local v0, apnData:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    const-string v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getTypeArrayAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, v3, :cond_0

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iput-boolean v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    .line 64
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getTypeArrayAsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xd

    .line 191
    iget-object v3, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    const/4 v3, 0x0

    .line 207
    :goto_0
    return-object v3

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0xd

    new-array v1, v3, [Ljava/lang/String;

    .line 196
    .local v1, typeArray:[Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0xd

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v2, types:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 201
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 203
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAuthType()I
    .locals 3

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTypeArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isTetherDunValid()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    return v0
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 2
    .parameter "apn"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 216
    return-void
.end method

.method public setAuthType(I)V
    .locals 3
    .parameter "authType"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 260
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 2
    .parameter "mcc"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    .line 252
    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 2
    .parameter "mmsPort"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 248
    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 2
    .parameter "mmsProxy"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 244
    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 2
    .parameter "mmsc"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 240
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 2
    .parameter "mnc"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 256
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 212
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 232
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 2
    .parameter "port"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 224
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 220
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 2
    .parameter "server"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x6

    aput-object p1, v0, v1

    .line 236
    return-void
.end method

.method public setTypeArray(Ljava/lang/String;)V
    .locals 0
    .parameter "typeArrayAsString"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 228
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
