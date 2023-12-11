package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2897H4 extends AbstractC2909J4 implements Spliterator.InterfaceC2776d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2897H4(Spliterator.InterfaceC2776d interfaceC2776d, long j, long j2) {
        super(interfaceC2776d, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2897H4(Spliterator.InterfaceC2776d interfaceC2776d, AbstractC2897H4 abstractC2897H4) {
        super(interfaceC2776d, abstractC2897H4);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    /* renamed from: forEachRemaining */
    public void m570e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC3056j4 abstractC3056j4 = null;
        while (true) {
            int m562r = m562r();
            if (m562r == 1) {
                return;
            }
            if (m562r != 2) {
                ((Spliterator.InterfaceC2776d) this.f906a).forEachRemaining(obj);
                return;
            }
            if (abstractC3056j4 == null) {
                abstractC3056j4 = mo565t(128);
            } else {
                abstractC3056j4.f1110b = 0;
            }
            long j = 0;
            while (((Spliterator.InterfaceC2776d) this.f906a).tryAdvance(abstractC3056j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC3056j4.mo449b(obj, m564p(j));
        }
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2840k.m602d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2840k.m601e(this, i);
    }

    /* renamed from: s */
    protected abstract void mo566s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC3056j4 mo565t(int i);

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    /* renamed from: tryAdvance */
    public boolean m567n(Object obj) {
        Objects.requireNonNull(obj);
        while (m562r() != 1 && ((Spliterator.InterfaceC2776d) this.f906a).tryAdvance(this)) {
            if (m564p(1L) == 1) {
                mo566s(obj);
                return true;
            }
        }
        return false;
    }
}
