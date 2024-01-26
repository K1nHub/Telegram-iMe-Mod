package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import kotlin.KotlinVersion;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.JavaNullabilityAnnotationsStatus;
import kotlin.reflect.jvm.internal.impl.name.FqName;
/* compiled from: JavaNullabilityAnnotationSettings.kt */
/* loaded from: classes4.dex */
public final class JavaNullabilityAnnotationSettingsKt {
    private static final FqName CHECKER_FRAMEWORK_COMPATQUAL_ANNOTATIONS_PACKAGE;
    private static final FqName JSPECIFY_ANNOTATIONS_PACKAGE;
    private static final FqName JSPECIFY_OLD_ANNOTATIONS_PACKAGE;
    private static final JavaNullabilityAnnotationsStatus JSR_305_DEFAULT_SETTINGS;
    private static final NullabilityAnnotationStates<JavaNullabilityAnnotationsStatus> NULLABILITY_ANNOTATION_SETTINGS;
    private static final FqName[] RXJAVA3_ANNOTATIONS;
    private static final FqName RXJAVA3_ANNOTATIONS_PACKAGE;
    private static final String RXJAVA3_ANNOTATIONS_PACKAGE_NAME;

    static {
        Map mapOf;
        FqName fqName = new FqName("org.jspecify.nullness");
        JSPECIFY_OLD_ANNOTATIONS_PACKAGE = fqName;
        FqName fqName2 = new FqName("org.jspecify.annotations");
        JSPECIFY_ANNOTATIONS_PACKAGE = fqName2;
        FqName fqName3 = new FqName("io.reactivex.rxjava3.annotations");
        RXJAVA3_ANNOTATIONS_PACKAGE = fqName3;
        FqName fqName4 = new FqName("org.checkerframework.checker.nullness.compatqual");
        CHECKER_FRAMEWORK_COMPATQUAL_ANNOTATIONS_PACKAGE = fqName4;
        String asString = fqName3.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "RXJAVA3_ANNOTATIONS_PACKAGE.asString()");
        RXJAVA3_ANNOTATIONS_PACKAGE_NAME = asString;
        RXJAVA3_ANNOTATIONS = new FqName[]{new FqName(asString + ".Nullable"), new FqName(asString + ".NonNull")};
        FqName fqName5 = new FqName("org.jetbrains.annotations");
        JavaNullabilityAnnotationsStatus.Companion companion = JavaNullabilityAnnotationsStatus.Companion;
        FqName fqName6 = new FqName("androidx.annotation.RecentlyNullable");
        ReportLevel reportLevel = ReportLevel.WARN;
        KotlinVersion kotlinVersion = new KotlinVersion(1, 9);
        ReportLevel reportLevel2 = ReportLevel.STRICT;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m149to(fqName5, companion.getDEFAULT()), TuplesKt.m149to(new FqName("androidx.annotation"), companion.getDEFAULT()), TuplesKt.m149to(new FqName("android.support.annotation"), companion.getDEFAULT()), TuplesKt.m149to(new FqName("android.annotation"), companion.getDEFAULT()), TuplesKt.m149to(new FqName("com.android.annotations"), companion.getDEFAULT()), TuplesKt.m149to(new FqName("org.eclipse.jdt.annotation"), companion.getDEFAULT()), TuplesKt.m149to(new FqName("org.checkerframework.checker.nullness.qual"), companion.getDEFAULT()), TuplesKt.m149to(fqName4, companion.getDEFAULT()), TuplesKt.m149to(new FqName("javax.annotation"), companion.getDEFAULT()), TuplesKt.m149to(new FqName("edu.umd.cs.findbugs.annotations"), companion.getDEFAULT()), TuplesKt.m149to(new FqName("io.reactivex.annotations"), companion.getDEFAULT()), TuplesKt.m149to(fqName6, new JavaNullabilityAnnotationsStatus(reportLevel, null, null, 4, null)), TuplesKt.m149to(new FqName("androidx.annotation.RecentlyNonNull"), new JavaNullabilityAnnotationsStatus(reportLevel, null, null, 4, null)), TuplesKt.m149to(new FqName("lombok"), companion.getDEFAULT()), TuplesKt.m149to(fqName, new JavaNullabilityAnnotationsStatus(reportLevel, kotlinVersion, reportLevel2)), TuplesKt.m149to(fqName2, new JavaNullabilityAnnotationsStatus(reportLevel, new KotlinVersion(1, 9), reportLevel2)), TuplesKt.m149to(fqName3, new JavaNullabilityAnnotationsStatus(reportLevel, new KotlinVersion(1, 8), reportLevel2)));
        NULLABILITY_ANNOTATION_SETTINGS = new NullabilityAnnotationStatesImpl(mapOf);
        JSR_305_DEFAULT_SETTINGS = new JavaNullabilityAnnotationsStatus(reportLevel, null, null, 4, null);
    }

    public static final FqName getJSPECIFY_ANNOTATIONS_PACKAGE() {
        return JSPECIFY_ANNOTATIONS_PACKAGE;
    }

    public static final FqName[] getRXJAVA3_ANNOTATIONS() {
        return RXJAVA3_ANNOTATIONS;
    }

    public static /* synthetic */ Jsr305Settings getDefaultJsr305Settings$default(KotlinVersion kotlinVersion, int i, Object obj) {
        if ((i & 1) != 0) {
            kotlinVersion = KotlinVersion.CURRENT;
        }
        return getDefaultJsr305Settings(kotlinVersion);
    }

    public static final Jsr305Settings getDefaultJsr305Settings(KotlinVersion configuredKotlinVersion) {
        ReportLevel reportLevelBefore;
        Intrinsics.checkNotNullParameter(configuredKotlinVersion, "configuredKotlinVersion");
        JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = JSR_305_DEFAULT_SETTINGS;
        if (javaNullabilityAnnotationsStatus.getSinceVersion() != null && javaNullabilityAnnotationsStatus.getSinceVersion().compareTo(configuredKotlinVersion) <= 0) {
            reportLevelBefore = javaNullabilityAnnotationsStatus.getReportLevelAfter();
        } else {
            reportLevelBefore = javaNullabilityAnnotationsStatus.getReportLevelBefore();
        }
        ReportLevel reportLevel = reportLevelBefore;
        return new Jsr305Settings(reportLevel, getDefaultMigrationJsr305ReportLevelForGivenGlobal(reportLevel), null, 4, null);
    }

    public static final ReportLevel getDefaultMigrationJsr305ReportLevelForGivenGlobal(ReportLevel globalReportLevel) {
        Intrinsics.checkNotNullParameter(globalReportLevel, "globalReportLevel");
        if (globalReportLevel == ReportLevel.WARN) {
            return null;
        }
        return globalReportLevel;
    }

    public static final ReportLevel getDefaultReportLevelForAnnotation(FqName annotationFqName) {
        Intrinsics.checkNotNullParameter(annotationFqName, "annotationFqName");
        return getReportLevelForAnnotation$default(annotationFqName, NullabilityAnnotationStates.Companion.getEMPTY(), null, 4, null);
    }

    public static /* synthetic */ ReportLevel getReportLevelForAnnotation$default(FqName fqName, NullabilityAnnotationStates nullabilityAnnotationStates, KotlinVersion kotlinVersion, int i, Object obj) {
        if ((i & 4) != 0) {
            kotlinVersion = new KotlinVersion(1, 7, 20);
        }
        return getReportLevelForAnnotation(fqName, nullabilityAnnotationStates, kotlinVersion);
    }

    public static final ReportLevel getReportLevelForAnnotation(FqName annotation, NullabilityAnnotationStates<? extends ReportLevel> configuredReportLevels, KotlinVersion configuredKotlinVersion) {
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(configuredReportLevels, "configuredReportLevels");
        Intrinsics.checkNotNullParameter(configuredKotlinVersion, "configuredKotlinVersion");
        ReportLevel reportLevel = configuredReportLevels.get(annotation);
        if (reportLevel != null) {
            return reportLevel;
        }
        JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = NULLABILITY_ANNOTATION_SETTINGS.get(annotation);
        if (javaNullabilityAnnotationsStatus == null) {
            return ReportLevel.IGNORE;
        }
        if (javaNullabilityAnnotationsStatus.getSinceVersion() != null && javaNullabilityAnnotationsStatus.getSinceVersion().compareTo(configuredKotlinVersion) <= 0) {
            return javaNullabilityAnnotationsStatus.getReportLevelAfter();
        }
        return javaNullabilityAnnotationsStatus.getReportLevelBefore();
    }
}
