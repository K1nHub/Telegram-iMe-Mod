package org.ton.adnl.connection;

import io.ktor.utils.p032io.core.BytePacketBuilder;
import io.ktor.utils.p032io.core.ByteReadPacket;
import io.ktor.utils.p032io.core.ByteReadPacketExtensionsKt;
import io.ktor.utils.p032io.core.Output;
import io.ktor.utils.p032io.core.StringsKt;
import java.nio.ByteBuffer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import org.ton.api.adnl.message.AdnlMessageAnswer;
import org.ton.api.adnl.message.AdnlMessageQuery;
import org.ton.p045tl.ByteString;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdnlClientImpl.kt */
@DebugMetadata(m145c = "org.ton.adnl.connection.AdnlClientImpl$sendQuery$2", m144f = "AdnlClientImpl.kt", m143l = {23}, m142m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class AdnlClientImpl$sendQuery$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ByteReadPacket>, Object> {
    final /* synthetic */ AdnlConnection $adnlConnection;
    final /* synthetic */ CompletableJob $context;
    final /* synthetic */ byte[] $queryData;
    final /* synthetic */ ByteString $queryId;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdnlClientImpl$sendQuery$2(AdnlConnection adnlConnection, CompletableJob completableJob, ByteString byteString, byte[] bArr, Continuation<? super AdnlClientImpl$sendQuery$2> continuation) {
        super(2, continuation);
        this.$adnlConnection = adnlConnection;
        this.$context = completableJob;
        this.$queryId = byteString;
        this.$queryData = bArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AdnlClientImpl$sendQuery$2(this.$adnlConnection, this.$context, this.$queryId, this.$queryData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ByteReadPacket> continuation) {
        return ((AdnlClientImpl$sendQuery$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            AdnlConnection adnlConnection = this.$adnlConnection;
            ByteString byteString = this.$queryId;
            byte[] bArr = this.$queryData;
            BytePacketBuilder bytePacketBuilder = new BytePacketBuilder(null, 1, null);
            try {
                AdnlMessageQuery.Companion.encodeBoxed((Output) bytePacketBuilder, (BytePacketBuilder) new AdnlMessageQuery(byteString, bArr));
                AdnlRequestData adnlRequestData = new AdnlRequestData(StringsKt.readBytes$default(bytePacketBuilder.build(), 0, 1, null), this.$context);
                CompletableJob completableJob = this.$context;
                this.label = 1;
                obj = adnlConnection.execute(adnlRequestData, completableJob, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (Throwable th) {
                bytePacketBuilder.release();
                throw th;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        final byte[] answer = AdnlMessageAnswer.Companion.decodeBoxed(((AdnlResponseData) obj).getBody()).getAnswer();
        ByteBuffer wrap = ByteBuffer.wrap(answer, 0, answer.length);
        Intrinsics.checkNotNullExpressionValue(wrap, "wrap(array, offset, length)");
        return ByteReadPacketExtensionsKt.ByteReadPacket(wrap, new Function1<ByteBuffer, Unit>() { // from class: org.ton.adnl.connection.AdnlClientImpl$sendQuery$2$invokeSuspend$$inlined$ByteReadPacket$default$1
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
    }
}
