package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2985k implements InterfaceC2611s.InterfaceC2613b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1185a;

    private /* synthetic */ C2985k(Spliterator.OfInt ofInt) {
        this.f1185a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2611s.InterfaceC2613b m141a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C2987l ? ((C2987l) ofInt).f1187a : new C2985k(ofInt);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1185a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b
    /* renamed from: c */
    public /* synthetic */ void mo140c(InterfaceC2584l interfaceC2584l) {
        this.f1185a.forEachRemaining(C2956Q.m179a(interfaceC2584l));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ int characteristics() {
        return this.f1185a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long estimateSize() {
        return this.f1185a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1185a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2918t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1185a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b
    /* renamed from: g */
    public /* synthetic */ boolean mo139g(InterfaceC2584l interfaceC2584l) {
        return this.f1185a.tryAdvance(C2956Q.m179a(interfaceC2584l));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ Comparator getComparator() {
        return this.f1185a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1185a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1185a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2918t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1185a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2613b, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2611s.InterfaceC2613b trySplit() {
        return m141a(this.f1185a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2611s trySplit() {
        return C2977g.m152a(this.f1185a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2918t trySplit() {
        return C2993o.m129a(this.f1185a.trySplit());
    }
}
