package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3231m implements InterfaceC2853s.InterfaceC2856c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1275a;

    private /* synthetic */ C3231m(Spliterator.OfLong ofLong) {
        this.f1275a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2856c m120a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3233n ? ((C3233n) ofLong).f1277a : new C3231m(ofLong);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1275a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ int characteristics() {
        return this.f1275a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c
    /* renamed from: d */
    public /* synthetic */ void mo119d(InterfaceC2831q interfaceC2831q) {
        this.f1275a.forEachRemaining(C3218f0.m138a(interfaceC2831q));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long estimateSize() {
        return this.f1275a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1275a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1275a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ Comparator getComparator() {
        return this.f1275a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1275a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1275a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c
    /* renamed from: i */
    public /* synthetic */ boolean mo118i(InterfaceC2831q interfaceC2831q) {
        return this.f1275a.tryAdvance(C3218f0.m138a(interfaceC2831q));
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1275a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s.InterfaceC2856c trySplit() {
        return m120a(this.f1275a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s trySplit() {
        return C3219g.m137a(this.f1275a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC3160t trySplit() {
        return C3235o.m114a(this.f1275a.trySplit());
    }
}
