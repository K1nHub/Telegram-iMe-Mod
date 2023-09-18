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
/* loaded from: classes6.dex */
public @interface DebugMetadata {
    /* renamed from: c */
    String m102c() default "";

    /* renamed from: f */
    String m101f() default "";

    /* renamed from: l */
    int[] m100l() default {};

    /* renamed from: m */
    String m99m() default "";

    /* renamed from: v */
    int m98v() default 1;
}
