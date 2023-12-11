package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.stream.g3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3037g3 implements InterfaceC3061k3 {

    /* renamed from: a */
    protected final InterfaceC3073m3 f1092a;

    public AbstractC3037g3(InterfaceC3073m3 interfaceC3073m3) {
        Objects.requireNonNull(interfaceC3073m3);
        this.f1092a = interfaceC3073m3;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3083o1.m422b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        this.f1092a.mo385l();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public boolean mo360o() {
        return this.f1092a.mo360o();
    }
}
