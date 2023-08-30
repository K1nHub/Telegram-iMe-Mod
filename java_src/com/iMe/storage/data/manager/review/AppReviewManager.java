package com.iMe.storage.data.manager.review;

import android.app.Activity;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.google.android.play.core.tasks.OnCompleteListener;
import com.google.android.play.core.tasks.Task;
import com.iMe.storage.data.locale.prefs.model.RequestAppReviewMetadata;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.storage.PreferenceHelper;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: AppReviewManager.kt */
/* loaded from: classes3.dex */
public final class AppReviewManager {
    private final WeakReference<Activity> mActivityWeakReference;
    private final ReviewManager manager;
    private final PreferenceHelper preferenceHelper;

    static {
        new Companion(null);
    }

    public AppReviewManager(Activity activity, PreferenceHelper preferenceHelper) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        this.preferenceHelper = preferenceHelper;
        this.mActivityWeakReference = new WeakReference<>(activity);
        ReviewManager create = ReviewManagerFactory.create(activity);
        Intrinsics.checkNotNullExpressionValue(create, "create(activity)");
        this.manager = create;
    }

    private final Activity getActivity() {
        return this.mActivityWeakReference.get();
    }

    public final boolean startReview() {
        boolean isNeedRequestReview = isNeedRequestReview();
        if (isNeedRequestReview) {
            Task<ReviewInfo> requestReviewFlow = this.manager.requestReviewFlow();
            Intrinsics.checkNotNullExpressionValue(requestReviewFlow, "manager.requestReviewFlow()");
            requestReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.iMe.storage.data.manager.review.AppReviewManager$$ExternalSyntheticLambda0
                @Override // com.google.android.play.core.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    AppReviewManager.startReview$lambda$1(AppReviewManager.this, task);
                }
            });
        }
        return isNeedRequestReview;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startReview$lambda$1(final AppReviewManager this$0, Task task) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(task, "task");
        if (task.isSuccessful()) {
            Object result = task.getResult();
            Intrinsics.checkNotNullExpressionValue(result, "task.result");
            ReviewInfo reviewInfo = (ReviewInfo) result;
            if (this$0.getActivity() != null) {
                ReviewManager reviewManager = this$0.manager;
                Activity activity = this$0.getActivity();
                Intrinsics.checkNotNull(activity);
                Task<Void> launchReviewFlow = reviewManager.launchReviewFlow(activity, reviewInfo);
                Intrinsics.checkNotNullExpressionValue(launchReviewFlow, "manager.launchReviewFlow(activity!!, reviewInfo)");
                launchReviewFlow.addOnCompleteListener(new OnCompleteListener() { // from class: com.iMe.storage.data.manager.review.AppReviewManager$$ExternalSyntheticLambda1
                    @Override // com.google.android.play.core.tasks.OnCompleteListener
                    public final void onComplete(Task task2) {
                        AppReviewManager.startReview$lambda$1$lambda$0(AppReviewManager.this, task2);
                    }
                });
                return;
            }
            return;
        }
        Timber.m6e(task.getException());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startReview$lambda$1$lambda$0(AppReviewManager this$0, Task task1) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(task1, "task1");
        this$0.updateReviewRequestCount(true);
    }

    private final boolean isNeedRequestReview() {
        RequestAppReviewMetadata requestAppReviewMetadata = this.preferenceHelper.getRequestAppReviewMetadata();
        if (requestAppReviewMetadata.isAnyRequestsBefore()) {
            return DateExtKt.isDaysAgo(5L, requestAppReviewMetadata.getLastRequestTime()) && requestAppReviewMetadata.getCount() < 2;
        }
        updateReviewRequestCount(false);
        return false;
    }

    private final void updateReviewRequestCount(boolean z) {
        RequestAppReviewMetadata requestAppReviewMetadata = this.preferenceHelper.getRequestAppReviewMetadata();
        if (z) {
            requestAppReviewMetadata.setCount(requestAppReviewMetadata.getCount() + 1);
        }
        requestAppReviewMetadata.setLastRequestTime(DateExtKt.now());
        this.preferenceHelper.setRequestAppReviewMetadata(requestAppReviewMetadata);
    }

    /* compiled from: AppReviewManager.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
