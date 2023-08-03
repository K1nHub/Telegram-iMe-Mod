package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.i3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3056i3 implements InterfaceC3080m3 {

    /* renamed from: a */
    protected final InterfaceC3080m3 f1054a;

    public AbstractC3056i3(InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        this.f1054a = interfaceC3080m3;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        this.f1054a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1054a.mo314o();
    }
}
