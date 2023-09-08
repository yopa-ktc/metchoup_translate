import { ComponentFixture, TestBed } from '@angular/core/testing';

import { DialogFromFileComponent } from './dialog-from-file.component';

describe('DialogFromFileComponent', () => {
  let component: DialogFromFileComponent;
  let fixture: ComponentFixture<DialogFromFileComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ DialogFromFileComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(DialogFromFileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
