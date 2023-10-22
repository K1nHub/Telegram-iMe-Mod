package org.ton.lite.api;

import io.ktor.utils.p032io.core.ByteReadPacket;
import kotlin.coroutines.Continuation;
import org.ton.lite.api.liteserver.LiteServerAccountState;
import org.ton.lite.api.liteserver.LiteServerSendMsgStatus;
import org.ton.lite.api.liteserver.functions.LiteServerGetAccountState;
import org.ton.lite.api.liteserver.functions.LiteServerSendMessage;
import org.ton.p044tl.TlCodec;
/* compiled from: LiteApiClient.kt */
/* loaded from: classes6.dex */
public interface LiteApiClient extends LiteApi {
    Object invoke(LiteServerGetAccountState liteServerGetAccountState, int i, Continuation<? super LiteServerAccountState> continuation);

    <Q, A> Object sendQuery(TlCodec<Q> tlCodec, TlCodec<A> tlCodec2, Q q, int i, Continuation<? super A> continuation);

    Object sendRawQuery(ByteReadPacket byteReadPacket, Continuation<? super ByteReadPacket> continuation);

    /* compiled from: LiteApiClient.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Can't wrap try/catch for region: R(11:1|(2:3|(8:5|6|(1:(1:9)(2:22|23))(8:24|(2:42|43)|26|27|28|29|30|(1:32))|10|11|12|13|(2:15|16)(2:18|19)))|44|6|(0)(0)|10|11|12|13|(0)(0)|(1:(0))) */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0090  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static <Q, A> java.lang.Object sendQuery(org.ton.lite.api.LiteApiClient r6, org.ton.p044tl.TlCodec<Q> r7, org.ton.p044tl.TlCodec<A> r8, Q r9, int r10, kotlin.coroutines.Continuation<? super A> r11) {
            /*
                boolean r0 = r11 instanceof org.ton.lite.api.LiteApiClient$sendQuery$1
                if (r0 == 0) goto L13
                r0 = r11
                org.ton.lite.api.LiteApiClient$sendQuery$1 r0 = (org.ton.lite.api.LiteApiClient$sendQuery$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                org.ton.lite.api.LiteApiClient$sendQuery$1 r0 = new org.ton.lite.api.LiteApiClient$sendQuery$1
                r0.<init>(r11)
            L18:
                java.lang.Object r11 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                java.lang.Object r6 = r0.L$0
                r8 = r6
                org.ton.tl.TlCodec r8 = (org.ton.p044tl.TlCodec) r8
                kotlin.ResultKt.throwOnFailure(r11)
                goto L7a
            L2f:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L37:
                kotlin.ResultKt.throwOnFailure(r11)
                io.ktor.utils.io.core.BytePacketBuilder r11 = new io.ktor.utils.io.core.BytePacketBuilder
                r11.<init>(r4, r3, r4)
                if (r10 <= 0) goto L50
                org.ton.lite.api.liteserver.functions.LiteServerWaitMasterchainSeqno r2 = new org.ton.lite.api.liteserver.functions.LiteServerWaitMasterchainSeqno     // Catch: java.lang.Throwable -> L4e
                r5 = 30000(0x7530, float:4.2039E-41)
                r2.<init>(r10, r5)     // Catch: java.lang.Throwable -> L4e
                org.ton.lite.api.liteserver.functions.LiteServerWaitMasterchainSeqno$Companion r10 = org.ton.lite.api.liteserver.functions.LiteServerWaitMasterchainSeqno.Companion     // Catch: java.lang.Throwable -> L4e
                r10.encodeBoxed(r11, r2)     // Catch: java.lang.Throwable -> L4e
                goto L50
            L4e:
                r6 = move-exception
                goto La4
            L50:
                r7.encodeBoxed(r11, r9)     // Catch: java.lang.Throwable -> L4e
                io.ktor.utils.io.core.ByteReadPacket r7 = r11.build()     // Catch: java.lang.Throwable -> L4e
                r9 = 0
                byte[] r7 = io.ktor.utils.p032io.core.StringsKt.readBytes$default(r7, r9, r3, r4)
                org.ton.lite.api.liteserver.functions.LiteServerQuery r9 = new org.ton.lite.api.liteserver.functions.LiteServerQuery
                r9.<init>(r7)
                io.ktor.utils.io.core.BytePacketBuilder r7 = new io.ktor.utils.io.core.BytePacketBuilder
                r7.<init>(r4, r3, r4)
                org.ton.lite.api.liteserver.functions.LiteServerQuery$Companion r10 = org.ton.lite.api.liteserver.functions.LiteServerQuery.Companion     // Catch: java.lang.Throwable -> L9f
                r10.encodeBoxed(r7, r9)     // Catch: java.lang.Throwable -> L9f
                io.ktor.utils.io.core.ByteReadPacket r7 = r7.build()     // Catch: java.lang.Throwable -> L9f
                r0.L$0 = r8
                r0.label = r3
                java.lang.Object r11 = r6.sendRawQuery(r7, r0)
                if (r11 != r1) goto L7a
                return r1
            L7a:
                io.ktor.utils.io.core.ByteReadPacket r11 = (io.ktor.utils.p032io.core.ByteReadPacket) r11
                org.ton.lite.api.liteserver.LiteServerError$Companion r6 = org.ton.lite.api.liteserver.LiteServerError.Companion     // Catch: java.lang.Exception -> L89
                io.ktor.utils.io.core.ByteReadPacket r7 = r11.copy()     // Catch: java.lang.Exception -> L89
                java.lang.Object r6 = r6.decodeBoxed(r7)     // Catch: java.lang.Exception -> L89
                org.ton.lite.api.liteserver.LiteServerError r6 = (org.ton.lite.api.liteserver.LiteServerError) r6     // Catch: java.lang.Exception -> L89
                r4 = r6
            L89:
                if (r4 != 0) goto L90
                java.lang.Object r6 = r8.decodeBoxed(r11)
                return r6
            L90:
                org.ton.lite.api.exception.LiteServerException$Companion r6 = org.ton.lite.api.exception.LiteServerException.Companion
                int r7 = r4.getCode()
                java.lang.String r8 = r4.getMessage()
                org.ton.lite.api.exception.LiteServerException r6 = r6.create(r7, r8)
                throw r6
            L9f:
                r6 = move-exception
                r7.release()
                throw r6
            La4:
                r11.release()
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: org.ton.lite.api.LiteApiClient.DefaultImpls.sendQuery(org.ton.lite.api.LiteApiClient, org.ton.tl.TlCodec, org.ton.tl.TlCodec, java.lang.Object, int, kotlin.coroutines.Continuation):java.lang.Object");
        }

        public static /* synthetic */ Object sendQuery$default(LiteApiClient liteApiClient, TlCodec tlCodec, TlCodec tlCodec2, Object obj, int i, Continuation continuation, int i2, Object obj2) {
            if (obj2 == null) {
                if ((i2 & 8) != 0) {
                    i = -1;
                }
                return liteApiClient.sendQuery(tlCodec, tlCodec2, obj, i, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendQuery");
        }

        public static Object invoke(LiteApiClient liteApiClient, LiteServerSendMessage liteServerSendMessage, Continuation<? super LiteServerSendMsgStatus> continuation) {
            return sendQuery$default(liteApiClient, LiteServerSendMessage.Companion, LiteServerSendMsgStatus.Companion, liteServerSendMessage, 0, continuation, 8, null);
        }

        public static Object invoke(LiteApiClient liteApiClient, LiteServerGetAccountState liteServerGetAccountState, int i, Continuation<? super LiteServerAccountState> continuation) {
            return liteApiClient.sendQuery(LiteServerGetAccountState.Companion, LiteServerAccountState.Companion, liteServerGetAccountState, i, continuation);
        }
    }
}
