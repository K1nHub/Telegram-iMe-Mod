package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.f3 */
/* loaded from: classes2.dex */
public abstract class AbstractC3038f3 implements InterfaceC3062j3 {

    /* renamed from: a */
    protected final InterfaceC3080m3 f1030a;

    public AbstractC3038f3(InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        this.f1030a = interfaceC3080m3;
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

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        this.f1030a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1030a.mo314o();
    }
}
