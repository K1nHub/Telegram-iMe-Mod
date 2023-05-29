package kotlinx.coroutines.sync;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: Mutex.kt */
/* loaded from: classes4.dex */
final class MutexImpl$lockSuspend$2$1$1 extends Lambda implements Function1<Throwable, Unit> {
    final /* synthetic */ Object $owner;
    final /* synthetic */ MutexImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutexImpl$lockSuspend$2$1$1(MutexImpl mutexImpl, Object obj) {
        super(1);
        this.this$0 = mutexImpl;
        this.$owner = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        this.this$0.unlock(this.$owner);
    }
}
