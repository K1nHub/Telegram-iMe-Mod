package kotlinx.coroutines.rx2;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
/* compiled from: RxConvert.kt */
@DebugMetadata(m84c = "kotlinx.coroutines.rx2.RxConvertKt$asFlow$1", m83f = "RxConvert.kt", m82l = {95}, m81m = "invokeSuspend")
/* loaded from: classes4.dex */
final class RxConvertKt$asFlow$1 extends SuspendLambda implements Function2<ProducerScope<? super T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ ObservableSource<T> $this_asFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RxConvertKt$asFlow$1(ObservableSource<T> observableSource, Continuation<? super RxConvertKt$asFlow$1> continuation) {
        super(2, continuation);
        this.$this_asFlow = observableSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RxConvertKt$asFlow$1 rxConvertKt$asFlow$1 = new RxConvertKt$asFlow$1(this.$this_asFlow, continuation);
        rxConvertKt$asFlow$1.L$0 = obj;
        return rxConvertKt$asFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super T> producerScope, Continuation<? super Unit> continuation) {
        return ((RxConvertKt$asFlow$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final AtomicReference atomicReference = new AtomicReference();
            this.$this_asFlow.subscribe(new Observer<T>() { // from class: kotlinx.coroutines.rx2.RxConvertKt$asFlow$1$observer$1
                @Override // io.reactivex.Observer
                public void onComplete() {
                    SendChannel.DefaultImpls.close$default(producerScope, null, 1, null);
                }

                @Override // io.reactivex.Observer
                public void onSubscribe(Disposable disposable) {
                    if (atomicReference.compareAndSet(null, disposable)) {
                        return;
                    }
                    disposable.dispose();
                }

                @Override // io.reactivex.Observer
                public void onNext(T t) {
                    try {
                        ChannelsKt.trySendBlocking(producerScope, t);
                    } catch (InterruptedException unused) {
                    }
                }

                @Override // io.reactivex.Observer
                public void onError(Throwable th) {
                    producerScope.close(th);
                }
            });
            C32711 c32711 = new C32711(atomicReference);
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, c32711, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxConvert.kt */
    /* renamed from: kotlinx.coroutines.rx2.RxConvertKt$asFlow$1$1 */
    /* loaded from: classes4.dex */
    public static final class C32711 extends Lambda implements Function0<Unit> {
        final /* synthetic */ AtomicReference<Disposable> $disposableRef;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C32711(AtomicReference<Disposable> atomicReference) {
            super(0);
            this.$disposableRef = atomicReference;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            Disposable andSet = this.$disposableRef.getAndSet(Disposables.disposed());
            if (andSet != null) {
                andSet.dispose();
            }
        }
    }
}
