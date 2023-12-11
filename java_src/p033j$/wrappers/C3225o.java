package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3225o implements Spliterator.InterfaceC2776d {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1327a;

    private /* synthetic */ C3225o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1327a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2776d m180a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3227p ? ((C3227p) ofPrimitive).f1329a : new C3225o(ofPrimitive);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return this.f1327a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1327a.characteristics();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1327a.estimateSize();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1327a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1327a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1327a.getComparator();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1327a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1327a.hasCharacteristics(i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1327a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2776d trySplit() {
        return m180a(this.f1327a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3209g.m205a(this.f1327a.trySplit());
    }
}
