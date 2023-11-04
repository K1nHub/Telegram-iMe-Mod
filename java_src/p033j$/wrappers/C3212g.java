package p033j$.wrappers;

import java.util.Comparator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3212g implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ java.util.Spliterator f1311a;

    private /* synthetic */ C3212g(java.util.Spliterator spliterator) {
        this.f1311a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m205a(java.util.Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C3214h ? ((C3214h) spliterator).f1313a : new C3212g(spliterator);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return this.f1311a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1311a.characteristics();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1311a.estimateSize();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1311a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1311a.getComparator();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1311a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1311a.hasCharacteristics(i);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m205a(this.f1311a.trySplit());
    }
}
