package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2861k implements InterfaceC2487s.InterfaceC2489b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1180a;

    private /* synthetic */ C2861k(Spliterator.OfInt ofInt) {
        this.f1180a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2487s.InterfaceC2489b m141a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C2863l ? ((C2863l) ofInt).f1182a : new C2861k(ofInt);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1180a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b
    /* renamed from: c */
    public /* synthetic */ void mo140c(InterfaceC2460l interfaceC2460l) {
        this.f1180a.forEachRemaining(C2832Q.m179a(interfaceC2460l));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ int characteristics() {
        return this.f1180a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long estimateSize() {
        return this.f1180a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1180a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2794t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1180a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b
    /* renamed from: g */
    public /* synthetic */ boolean mo139g(InterfaceC2460l interfaceC2460l) {
        return this.f1180a.tryAdvance(C2832Q.m179a(interfaceC2460l));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ Comparator getComparator() {
        return this.f1180a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1180a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1180a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2794t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1180a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2487s.InterfaceC2489b trySplit() {
        return m141a(this.f1180a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2487s trySplit() {
        return C2853g.m152a(this.f1180a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2489b, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2794t trySplit() {
        return C2869o.m129a(this.f1180a.trySplit());
    }
}
