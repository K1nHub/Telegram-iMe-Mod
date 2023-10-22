package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3224o implements Spliterator.InterfaceC2775d {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1327a;

    private /* synthetic */ C3224o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1327a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2775d m179a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3226p ? ((C3226p) ofPrimitive).f1329a : new C3224o(ofPrimitive);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
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

    @Override // p033j$.util.Spliterator.InterfaceC2775d
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

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1327a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2775d trySplit() {
        return m179a(this.f1327a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3208g.m204a(this.f1327a.trySplit());
    }
}
