package kotlin.coroutines.jvm.internal;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* JADX WARN: Method from annotation default annotation not found: i */
/* JADX WARN: Method from annotation default annotation not found: n */
/* JADX WARN: Method from annotation default annotation not found: s */
/* compiled from: DebugMetadata.kt */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4.dex */
public @interface DebugMetadata {
    /* renamed from: c */
    String m79c() default "";

    /* renamed from: f */
    String m78f() default "";

    /* renamed from: l */
    int[] m77l() default {};

    /* renamed from: m */
    String m76m() default "";

    /* renamed from: v */
    int m75v() default 1;
}
