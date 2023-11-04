package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2773F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U3 */
/* loaded from: classes2.dex */
public class C2973U3 extends AbstractC2998Z3 implements InterfaceC2820f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2973U3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2973U3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3, java.lang.Iterable, p033j$.lang.InterfaceC2674e
    /* renamed from: A */
    public Spliterator.InterfaceC2776a spliterator() {
        return new C2968T3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        m520z();
        int i = this.f1067b;
        this.f1067b = i + 1;
        ((double[]) this.f1003e)[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: c */
    public Object mo528c(int i) {
        return new double[i];
    }

    @Override // p033j$.lang.InterfaceC2674e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2820f) {
            mo340g((InterfaceC2820f) consumer);
        } else if (AbstractC2954Q4.f963a) {
            AbstractC2954Q4.m546a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2773F.m680f(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: s */
    protected void mo527s(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        InterfaceC2820f interfaceC2820f = (InterfaceC2820f) obj2;
        while (i < i2) {
            interfaceC2820f.accept(dArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: t */
    protected int mo526t(Object obj) {
        return ((double[]) obj).length;
    }

    public String toString() {
        double[] dArr = (double[]) mo341e();
        return dArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1068c), Arrays.toString(dArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(dArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2998Z3
    /* renamed from: y */
    protected Object[] mo521y(int i) {
        return new double[i];
    }
}
