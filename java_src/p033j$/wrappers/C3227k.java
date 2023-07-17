package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3227k implements InterfaceC2853s.InterfaceC2855b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1271a;

    private /* synthetic */ C3227k(Spliterator.OfInt ofInt) {
        this.f1271a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2855b m126a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3229l ? ((C3229l) ofInt).f1273a : new C3227k(ofInt);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1271a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b
    /* renamed from: c */
    public /* synthetic */ void mo125c(InterfaceC2826l interfaceC2826l) {
        this.f1271a.forEachRemaining(C3198Q.m164a(interfaceC2826l));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ int characteristics() {
        return this.f1271a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long estimateSize() {
        return this.f1271a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1271a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1271a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b
    /* renamed from: g */
    public /* synthetic */ boolean mo124g(InterfaceC2826l interfaceC2826l) {
        return this.f1271a.tryAdvance(C3198Q.m164a(interfaceC2826l));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ Comparator getComparator() {
        return this.f1271a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1271a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1271a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1271a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s.InterfaceC2855b trySplit() {
        return m126a(this.f1271a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s trySplit() {
        return C3219g.m137a(this.f1271a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC3160t trySplit() {
        return C3235o.m114a(this.f1271a.trySplit());
    }
}
