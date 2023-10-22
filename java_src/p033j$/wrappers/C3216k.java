package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3216k implements Spliterator.InterfaceC2773b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1319a;

    private /* synthetic */ C3216k(Spliterator.OfInt ofInt) {
        this.f1319a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2773b m193a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3218l ? ((C3218l) ofInt).f1321a : new C3216k(ofInt);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return this.f1319a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b
    /* renamed from: c */
    public /* synthetic */ void mo192c(InterfaceC2822l interfaceC2822l) {
        this.f1319a.forEachRemaining(C3185O.m233a(interfaceC2822l));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1319a.characteristics();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1319a.estimateSize();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1319a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1319a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b
    /* renamed from: g */
    public /* synthetic */ boolean mo191g(InterfaceC2822l interfaceC2822l) {
        return this.f1319a.tryAdvance(C3185O.m233a(interfaceC2822l));
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

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1319a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773b, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2773b trySplit() {
        return m193a(this.f1319a.trySplit());
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2775d trySplit() {
        return C3224o.m179a(this.f1319a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3208g.m204a(this.f1319a.trySplit());
    }
}
