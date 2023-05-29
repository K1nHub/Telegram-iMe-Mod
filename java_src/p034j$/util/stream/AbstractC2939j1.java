package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j1 */
/* loaded from: classes2.dex */
abstract class AbstractC2939j1 implements InterfaceC2959m3 {

    /* renamed from: a */
    boolean f973a;

    /* renamed from: b */
    boolean f974b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2939j1(EnumC2945k1 enumC2945k1) {
        boolean z;
        z = enumC2945k1.f980b;
        this.f974b = !z;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public /* synthetic */ void mo321m() {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public /* synthetic */ void mo297n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f973a;
    }
}
