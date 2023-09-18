package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.stream.f3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3093f3 implements InterfaceC3117j3 {

    /* renamed from: a */
    protected final InterfaceC3135m3 f1031a;

    public AbstractC3093f3(InterfaceC3135m3 interfaceC3135m3) {
        Objects.requireNonNull(interfaceC3135m3);
        this.f1031a = interfaceC3135m3;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3145o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        this.f1031a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1031a.mo314o();
    }
}
