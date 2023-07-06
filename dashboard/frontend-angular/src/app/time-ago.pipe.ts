import { Pipe, PipeTransform } from '@angular/core';
import { DatePipe } from '@angular/common';

@Pipe({
  name: 'timeAgo'
})
export class TimeAgoPipe implements PipeTransform {
  transform(value: string): string {
    const datePipe = new DatePipe('en-US');
    const transformedDate = datePipe.transform(value, 'medium');

    if (transformedDate) {
      const currentDate = new Date();
      const timeDifference = currentDate.getTime() - new Date(value).getTime();
      const seconds = Math.floor(timeDifference / 1000);
      const minutes = Math.floor(seconds / 60);
      const hours = Math.floor(minutes / 60);
      const days = Math.floor(hours / 24);
      const months = Math.floor(days / 30);
      const years = Math.floor(months / 12);

      if (years > 0) {
        return years === 1 ? 'Il y a 1 an' : `Il y a ${years} ans`;
      }
      if (months > 0) {
        return months === 1 ? 'Il y a 1 mois' : `Il y a ${months} mois`;
      }
      if (days > 0) {
        return days === 1 ? 'Il y a 1 jour' : `Il y a ${days} jours`;
      }
      if (hours > 0) {
        return hours === 1 ? 'Il y a 1 heure' : `Il y a ${hours} heures`;
      }
      if (minutes > 0) {
        return minutes === 1 ? 'Il y a 1 minute' : `Il y a ${minutes} minutes`;
      }
      if (seconds > 0) {
        return seconds === 1 ? 'Il y a 1 seconde' : `Il y a ${seconds} secondes`;
      }
    }

    return transformedDate || '';
  }
}
