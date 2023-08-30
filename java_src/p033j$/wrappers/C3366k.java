package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3366k implements InterfaceC2992s.InterfaceC2994b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1284a;

    private /* synthetic */ C3366k(Spliterator.OfInt ofInt) {
        this.f1284a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2992s.InterfaceC2994b m144a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3368l ? ((C3368l) ofInt).f1286a : new C3366k(ofInt);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1284a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b
    /* renamed from: c */
    public /* synthetic */ void mo143c(InterfaceC2965l interfaceC2965l) {
        this.f1284a.forEachRemaining(C3337Q.m182a(interfaceC2965l));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ int characteristics() {
        return this.f1284a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long estimateSize() {
        return this.f1284a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1284a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3299t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1284a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b
    /* renamed from: g */
    public /* synthetic */ boolean mo142g(InterfaceC2965l interfaceC2965l) {
        return this.f1284a.tryAdvance(C3337Q.m182a(interfaceC2965l));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ Comparator getComparator() {
        return this.f1284a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1284a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1284a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC3299t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1284a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2994b, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC2992s.InterfaceC2994b trySplit() {
        return m144a(this.f1284a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC2992s trySplit() {
        return C3358g.m155a(this.f1284a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC3299t trySplit() {
        return C3374o.m132a(this.f1284a.trySplit());
    }
}
