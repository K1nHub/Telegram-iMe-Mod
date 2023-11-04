package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2773F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2983W3 extends AbstractC2998Z3 implements InterfaceC2826l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2983W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2983W3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3, java.lang.Iterable, p033j$.lang.InterfaceC2674e
    /* renamed from: A */
    public Spliterator.InterfaceC2777b spliterator() {
        return new C2978V3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        m520z();
        int i2 = this.f1067b;
        this.f1067b = i2 + 1;
        ((int[]) this.f1003e)[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: c */
    public Object mo528c(int i) {
        return new int[i];
    }

    @Override // p033j$.lang.InterfaceC2674e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2826l) {
            mo340g((InterfaceC2826l) consumer);
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2773F.m679g(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: s */
    protected void mo527s(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2826l interfaceC2826l = (InterfaceC2826l) obj2;
        while (i < i2) {
            interfaceC2826l.accept(iArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: t */
    protected int mo526t(Object obj) {
        return ((int[]) obj).length;
    }

    public String toString() {
        int[] iArr = (int[]) mo341e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1068c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: y */
    protected Object[] mo521y(int i) {
        return new int[i];
    }
}
