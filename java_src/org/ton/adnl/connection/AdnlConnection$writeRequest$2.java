package org.ton.adnl.connection;

import io.ktor.utils.p032io.ByteWriteChannel;
import io.ktor.utils.p032io.ByteWriteChannelKt;
import io.ktor.utils.p032io.core.ByteReadPacket;
import io.ktor.utils.p032io.core.ByteReadPacketExtensionsKt;
import java.nio.ByteBuffer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import org.ton.crypto.AesCtr;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlConnection.kt */
@DebugMetadata(m148c = "org.ton.adnl.connection.AdnlConnection$writeRequest$2", m147f = "AdnlConnection.kt", m146l = {}, m145m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdnlConnection$writeRequest$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
    final /* synthetic */ CoroutineContext $callContext;
    final /* synthetic */ AesCtr $cipher;
    final /* synthetic */ boolean $closeChannel;
    final /* synthetic */ ByteWriteChannel $output;
    final /* synthetic */ AdnlRequestData $request;
    int label;
    final /* synthetic */ AdnlConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlConnection$writeRequest$2(CoroutineContext coroutineContext, AdnlConnection adnlConnection, ByteWriteChannel byteWriteChannel, AesCtr aesCtr, AdnlRequestData adnlRequestData, boolean z, Continuation<? super AdnlConnection$writeRequest$2> continuation) {
        super(2, continuation);
        this.$callContext = coroutineContext;
        this.this$0 = adnlConnection;
        this.$output = byteWriteChannel;
        this.$cipher = aesCtr;
        this.$request = adnlRequestData;
        this.$closeChannel = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdnlConnection$writeRequest$2(this.$callContext, this.this$0, this.$output, this.$cipher, this.$request, this.$closeChannel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
        return ((AdnlConnection$writeRequest$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Job launch$default;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            launch$default = BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.$callContext.plus(new CoroutineName("Request body writer"))), null, null, new C76871(this.this$0, this.$output, this.$cipher, this.$request, this.$closeChannel, null), 3, null);
            return launch$default;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdnlConnection.kt */
    @DebugMetadata(m148c = "org.ton.adnl.connection.AdnlConnection$writeRequest$2$1", m147f = "AdnlConnection.kt", m146l = {122}, m145m = "invokeSuspend")
    /* renamed from: org.ton.adnl.connection.AdnlConnection$writeRequest$2$1 */
    /* loaded from: classes6.dex */
    public static final class C76871 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AesCtr $cipher;
        final /* synthetic */ boolean $closeChannel;
        final /* synthetic */ ByteWriteChannel $output;
        final /* synthetic */ AdnlRequestData $request;
        int label;
        final /* synthetic */ AdnlConnection this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C76871(AdnlConnection adnlConnection, ByteWriteChannel byteWriteChannel, AesCtr aesCtr, AdnlRequestData adnlRequestData, boolean z, Continuation<? super C76871> continuation) {
            super(2, continuation);
            this.this$0 = adnlConnection;
            this.$output = byteWriteChannel;
            this.$cipher = aesCtr;
            this.$request = adnlRequestData;
            this.$closeChannel = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C76871(this.this$0, this.$output, this.$cipher, this.$request, this.$closeChannel, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C76871) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended;
            Object writeRaw;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    AdnlConnection adnlConnection = this.this$0;
                    ByteWriteChannel byteWriteChannel = this.$output;
                    AesCtr aesCtr = this.$cipher;
                    final byte[] body = this.$request.getBody();
                    ByteBuffer wrap = ByteBuffer.wrap(body, 0, body.length);
                    Intrinsics.checkNotNullExpressionValue(wrap, "wrap(array, offset, length)");
                    ByteReadPacket ByteReadPacket = ByteReadPacketExtensionsKt.ByteReadPacket(wrap, new Function1<ByteBuffer, Unit>() { // from class: org.ton.adnl.connection.AdnlConnection$writeRequest$2$1$invokeSuspend$$inlined$ByteReadPacket$default$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2(ByteBuffer it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(ByteBuffer byteBuffer) {
                            invoke2(byteBuffer);
                            return Unit.INSTANCE;
                        }
                    });
                    this.label = 1;
                    writeRaw = adnlConnection.writeRaw(byteWriteChannel, aesCtr, ByteReadPacket, this);
                    if (writeRaw == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                if (this.$closeChannel) {
                    ByteWriteChannelKt.close(this.$output);
                }
                return Unit.INSTANCE;
            } catch (Throwable th) {
                try {
                    this.$output.close(th);
                    throw th;
                } finally {
                    this.$output.flush();
                    if (this.$closeChannel) {
                        ByteWriteChannelKt.close(this.$output);
                    }
                }
            }
        }
    }
}
