package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
/* renamed from: j$.wrappers.h */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3209h implements Spliterator {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.Spliterator f1313a;

    private /* synthetic */ C3209h(p033j$.util.Spliterator spliterator) {
        this.f1313a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator m205a(p033j$.util.Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C3207g ? ((C3207g) spliterator).f1311a : new C3209h(spliterator);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1313a.characteristics();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1313a.estimateSize();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1313a.forEachRemaining(C3237v.m168b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1313a.getComparator();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1313a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1313a.hasCharacteristics(i);
    }

    @Override // java.util.Spliterator
    public /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f1313a.mo182b(C3237v.m168b(consumer));
    }

    @Override // java.util.Spliterator
    public /* synthetic */ Spliterator trySplit() {
        return m205a(this.f1313a.trySplit());
    }
}
