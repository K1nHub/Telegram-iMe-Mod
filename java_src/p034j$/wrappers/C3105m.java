package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3105m implements InterfaceC2727s.InterfaceC2730c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1193a;

    private /* synthetic */ C3105m(Spliterator.OfLong ofLong) {
        this.f1193a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2727s.InterfaceC2730c m120a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3107n ? ((C3107n) ofLong).f1195a : new C3105m(ofLong);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c, p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1193a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ int characteristics() {
        return this.f1193a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c
    /* renamed from: d */
    public /* synthetic */ void mo119d(InterfaceC2705q interfaceC2705q) {
        this.f1193a.forEachRemaining(C3092f0.m138a(interfaceC2705q));
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long estimateSize() {
        return this.f1193a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c, p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1193a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC3034t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1193a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ Comparator getComparator() {
        return this.f1193a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1193a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1193a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c
    /* renamed from: i */
    public /* synthetic */ boolean mo118i(InterfaceC2705q interfaceC2705q) {
        return this.f1193a.tryAdvance(C3092f0.m138a(interfaceC2705q));
    }

    @Override // p034j$.util.InterfaceC3034t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1193a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC2727s.InterfaceC2730c trySplit() {
        return m120a(this.f1193a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC2727s trySplit() {
        return C3093g.m137a(this.f1193a.trySplit());
    }

    @Override // p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC3034t trySplit() {
        return C3109o.m114a(this.f1193a.trySplit());
    }
}
