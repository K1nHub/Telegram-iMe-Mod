package com.smedialink.storage.data.utils.extentions;

import android.app.Activity;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class FirebaseExtKt {
    public static final <TResult> Observable<TResult> asObservableTask(final Task<TResult> task, final Activity activity) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Observable<TResult> create = Observable.create(new ObservableOnSubscribe() { // from class: com.smedialink.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda4
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                FirebaseExtKt.m1389asObservableTask$lambda9(Task.this, activity, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …ncelled\")\n        }\n    }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: asObservableTask$lambda-9  reason: not valid java name */
    public static final void m1389asObservableTask$lambda9(Task this_asObservableTask, Activity activity, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this_asObservableTask, "$this_asObservableTask");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this_asObservableTask.addOnFailureListener(activity, new OnFailureListener() { // from class: com.smedialink.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                FirebaseExtKt.m1390asObservableTask$lambda9$lambda5(ObservableEmitter.this, exc);
            }
        });
        this_asObservableTask.addOnSuccessListener(activity, new OnSuccessListener() { // from class: com.smedialink.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                FirebaseExtKt.m1391asObservableTask$lambda9$lambda6(ObservableEmitter.this, obj);
            }
        });
        this_asObservableTask.addOnCompleteListener(activity, new OnCompleteListener() { // from class: com.smedialink.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FirebaseExtKt.m1392asObservableTask$lambda9$lambda7(ObservableEmitter.this, task);
            }
        });
        this_asObservableTask.addOnCanceledListener(activity, FirebaseExtKt$$ExternalSyntheticLambda0.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: asObservableTask$lambda-9$lambda-5  reason: not valid java name */
    public static final void m1390asObservableTask$lambda9$lambda5(ObservableEmitter emitter, Exception exc) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (emitter.isDisposed()) {
            return;
        }
        emitter.onError(exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: asObservableTask$lambda-9$lambda-6  reason: not valid java name */
    public static final void m1391asObservableTask$lambda9$lambda6(ObservableEmitter emitter, Object obj) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (obj != null) {
            emitter.onNext(obj);
        } else {
            emitter.onError(new IllegalStateException("Observables can't emit null values"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: asObservableTask$lambda-9$lambda-7  reason: not valid java name */
    public static final void m1392asObservableTask$lambda9$lambda7(ObservableEmitter emitter, Task task) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        emitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: asObservableTask$lambda-9$lambda-8  reason: not valid java name */
    public static final void m1393asObservableTask$lambda9$lambda8() {
        Timber.m7d("cancelled", new Object[0]);
    }
}
