package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3220k implements Spliterator.InterfaceC2777b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1319a;

    private /* synthetic */ C3220k(Spliterator.OfInt ofInt) {
        this.f1319a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2777b m194a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3222l ? ((C3222l) ofInt).f1321a : new C3220k(ofInt);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2777b, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return this.f1319a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2777b
    /* renamed from: c */
    public /* synthetic */ void mo193c(InterfaceC2826l interfaceC2826l) {
        this.f1319a.forEachRemaining(C3189O.m234a(interfaceC2826l));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1319a.characteristics();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1319a.estimateSize();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2777b, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1319a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1319a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2777b
    /* renamed from: g */
    public /* synthetic */ boolean mo192g(InterfaceC2826l interfaceC2826l) {
        return this.f1319a.tryAdvance(C3189O.m234a(interfaceC2826l));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1319a.getComparator();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1319a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1319a.hasCharacteristics(i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1319a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2777b, p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2777b trySplit() {
        return m194a(this.f1319a.trySplit());
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2779d trySplit() {
        return C3228o.m180a(this.f1319a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3212g.m205a(this.f1319a.trySplit());
    }
}
