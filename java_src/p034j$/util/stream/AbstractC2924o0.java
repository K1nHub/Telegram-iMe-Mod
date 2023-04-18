package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.o0 */
/* loaded from: classes2.dex */
abstract class AbstractC2924o0 implements InterfaceC2775N4, InterfaceC2781O4 {

    /* renamed from: a */
    private final boolean f1007a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2924o0(boolean z) {
        this.f1007a = z;
    }

    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
        throw null;
    }

    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: b */
    public int mo357b() {
        if (this.f1007a) {
            return 0;
        }
        return EnumC2862d4.f918r;
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: c */
    public Object mo356c(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        (this.f1007a ? new C2936q0(abstractC2986y2, interfaceC2688s, this) : new C2942r0(abstractC2986y2, interfaceC2688s, abstractC2986y2.mo282v0(this))).invoke();
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2775N4
    /* renamed from: d */
    public Object mo355d(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        AbstractC2851c abstractC2851c = (AbstractC2851c) abstractC2986y2;
        abstractC2851c.mo290n0(abstractC2851c.mo282v0(this), interfaceC2688s);
        return null;
    }

    @Override // p034j$.util.function.InterfaceC2674y
    public /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public /* synthetic */ void mo316m() {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public /* synthetic */ void mo292n(long j) {
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }
}
