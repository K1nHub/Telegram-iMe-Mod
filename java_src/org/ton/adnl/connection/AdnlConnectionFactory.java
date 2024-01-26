package org.ton.adnl.connection;
/* compiled from: AdnlConnectionFactory.kt */
/* loaded from: classes6.dex */
public final class AdnlConnectionFactory {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object connect(org.ton.api.liteserver.LiteServerDesc r6, kotlin.coroutines.Continuation<? super org.ton.adnl.network.TcpClient> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof org.ton.adnl.connection.AdnlConnectionFactory$connect$1
            if (r0 == 0) goto L13
            r0 = r7
            org.ton.adnl.connection.AdnlConnectionFactory$connect$1 r0 = (org.ton.adnl.connection.AdnlConnectionFactory$connect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.ton.adnl.connection.AdnlConnectionFactory$connect$1 r0 = new org.ton.adnl.connection.AdnlConnectionFactory$connect$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r6 = r0.L$0
            org.ton.adnl.network.TcpClientImpl r6 = (org.ton.adnl.network.TcpClientImpl) r6
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L60
            goto L5f
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            org.ton.adnl.network.TcpClientImpl r7 = new org.ton.adnl.network.TcpClientImpl     // Catch: java.lang.Throwable -> L60
            r7.<init>()     // Catch: java.lang.Throwable -> L60
            org.ton.adnl.network.IPAddress$Companion r2 = org.ton.adnl.network.IPAddress.Companion     // Catch: java.lang.Throwable -> L60
            int r4 = r6.getIp()     // Catch: java.lang.Throwable -> L60
            int r6 = r6.getPort()     // Catch: java.lang.Throwable -> L60
            org.ton.adnl.network.IPAddress r6 = r2.ipv4(r4, r6)     // Catch: java.lang.Throwable -> L60
            java.lang.String r2 = r6.getHost()     // Catch: java.lang.Throwable -> L60
            int r6 = r6.getPort()     // Catch: java.lang.Throwable -> L60
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L60
            r0.label = r3     // Catch: java.lang.Throwable -> L60
            java.lang.Object r6 = r7.connect(r2, r6, r0)     // Catch: java.lang.Throwable -> L60
            if (r6 != r1) goto L5e
            return r1
        L5e:
            r6 = r7
        L5f:
            return r6
        L60:
            r6 = move-exception
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.adnl.connection.AdnlConnectionFactory.connect(org.ton.api.liteserver.LiteServerDesc, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
