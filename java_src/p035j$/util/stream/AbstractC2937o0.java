package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC2937o0 implements InterfaceC2788N4, InterfaceC2794O4 {

    /* renamed from: a */
    private final boolean f1012a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2937o0(boolean z) {
        this.f1012a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: b */
    public int mo371b() {
        if (this.f1012a) {
            return 0;
        }
        return EnumC2875d4.f923r;
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: c */
    public Object mo370c(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        (this.f1012a ? new C2949q0(abstractC2999y2, interfaceC2701s, this) : new C2955r0(abstractC2999y2, interfaceC2701s, abstractC2999y2.mo296v0(this))).invoke();
        return null;
    }

    @Override // p035j$.util.stream.InterfaceC2788N4
    /* renamed from: d */
    public Object mo369d(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        AbstractC2864c abstractC2864c = (AbstractC2864c) abstractC2999y2;
        abstractC2864c.mo304n0(abstractC2864c.mo296v0(this), interfaceC2701s);
        return null;
    }

    @Override // p035j$.util.function.InterfaceC2687y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public /* synthetic */ void mo330m() {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public /* synthetic */ void mo306n(long j) {
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }
}
